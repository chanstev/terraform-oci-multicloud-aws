module "aws_ia_vpc" {
  source   = "aws-ia/vpc/aws"
  version = ">= 4.2.0"

  name                                 = var.vpc_name
  cidr_block                           = var.vpc_cidr
  vpc_assign_generated_ipv6_cidr_block = false
  vpc_egress_only_internet_gateway     = true
  az_count                             = 1
  azs = [var.subnet_availability_zone]
  subnets = {
    # IPv4 only subnet
    private = {
      # omitting name_prefix defaults value to "private"
      # name_prefix  = "private_with_egress"
      cidrs      = [var.vpc_private_subnet_cidr]
      connect_to_public_natgw = true
    }
  }

  vpc_flow_logs = {
    log_destination_type = "cloud-watch-logs"
    retention_in_days    = 180
  }
}

#Create exa data infrastructure
module "exadata_infrastructure" {
  source                                 = "../../modules/aws-odb-exadata-infra"
  exa_infra_display_name                 = var.infra_display_name
  aws_odb_exa_infra_availability_zone_id = var.availability_zone
  exa_infra_shape                        = var.infra_shape
  compute_count                          = var.compute_count
  storage_count                          = var.storage_count
  tags                                   = var.tags
  maintenance_window {
    preference                       = var.maintenance_window_preference
  }
}

#Create odb network
module "odb_network" {
  source                               = "../../modules/aws-odb-network"
  aws_odb_network_availability_zone_id = var.availability_zone
  aws_odb_network_display_name         = var.network_display_name
  aws_odb_network_client_subnet_cidr   = var.subnet_main_cidr
  aws_odb_network_backup_subnet_cidr   = var.subnet_backup_cidr
  aws_odb_network_default_dns_prefix   = var.default_dns_prefix
  aws_odb_network_s3_access            = var.network_s3_access
  aws_odb_network_zero_etl_access      = var.network_zero_etl_access
  aws_odb_network_s3_policy_document   = var.network_s3_policy_document
  tags                                 = var.network_tags
}

#Peer aws vpc network with odb network
module "network_peering" {
  source          = "../../modules/aws-odb-peering"
  odb_network_id  = module.odb_network.aws_odb_network_resource_id
  peer_network_id = module.aws_ia_vpc.vpc_attributes.id
  display_name    = "NetworkPeering-${module.odb_network.aws_odb_network_resource_id}-${module.aws_ia_vpc.vpc_attributes.id}"
}

data "oci_database_db_servers" "db_servers" {
    compartment_id = module.exadata_infrastructure.oci_compartment_ocid
    exadata_infrastructure_id = module.exadata_infrastructure.exa_resource_ocid
}

# Create VM cluster in OCI
module "odb_vm_cluster" {
  source                       = "../../modules/aws-odb-vmc"
  aws_odb_exa_resource_id      = module.exadata_infrastructure.aws_odb_exa_resource_id
  cpu_core_count               = var.vm_cpu_core_count
  gi_version                   = var.gi_version
  vm_cluster_display_name      = var.vm_display_name
  hostname_prefix              = var.hostname_prefix
  ssh_public_keys              = var.vm_ssh_public_keys
  aws_odb_network_resource_id  = module.odb_network.aws_odb_network_resource_id
  db_servers                   = var.db_servers == null ? [for dbs in data.oci_database_db_servers.db_servers.db_servers : dbs.id] : var.db_servers
  is_local_backup_enabled      = var.is_vm_local_backup_enabled
  is_sparse_diskgroup_enabled = var.is_sparse_diskgroup_enabled
  data_storage_size_in_tbs = var.data_storage_size_in_tbs
  memory_size_in_gbs = var.memory_size_in_gbs
  db_node_storage_size_in_gbs = var.db_node_storage_size_in_gbs
  license_model                = var.license_model
  data_collection_options {
    is_diagnostics_events_enabled = var.is_diagnostics_events_enabled
    is_health_monitoring_enabled  = var.is_health_monitoring_enabled
    is_incident_logs_enabled      = var.is_incident_logs_enabled
  }
  scan_listener_port_tcp          = var.scan_listener_port_tcp
}
