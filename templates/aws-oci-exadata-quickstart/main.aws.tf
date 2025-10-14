locals {
  # IDs of depending resources
  cloud_exadata_infrastructure_id = module.exadata_infrastructure.aws_odb_exa_resource_id
  odb_network_id  = module.odb_network.aws_odb_network_resource_id
  peer_network_id = var.odb_peering_connection_peer_network_id == null ? module.aws_ia_vpc[0].vpc_attributes.id : var.odb_peering_connection_peer_network_id
}

#Create odb network
module "odb_network" {
  source                               = "../../modules/aws-odb-network"
  aws_odb_network_availability_zone_id = var.availability_zone_id
  aws_odb_network_display_name         = var.odb_network_name
  aws_odb_network_client_subnet_cidr   = var.odb_network_client_subnet_cidr
  aws_odb_network_backup_subnet_cidr   = var.odb_network_backup_subnet_cidr
  aws_odb_network_default_dns_prefix   = var.odb_network_default_dns_prefix
  aws_odb_network_s3_access            = var.odb_network_s3_access
  aws_odb_network_zero_etl_access      = var.odb_network_zero_etl_access
  aws_odb_network_s3_policy_document   = var.odb_network_s3_policy_document
  tags                                 = var.tags
}

# VPC for ODB Peering Connection
module "aws_ia_vpc" {
  count      = var.odb_peering_connection_peer_network_id == null ? 1 : 0
  source     = "aws-ia/vpc/aws"
  version    = "4.5.0"
  tags       = var.tags
  name       = var.vpc_name
  azs        = [var.availability_zone]
  cidr_block = var.vpc_cidr
  subnets = {
    workload = {
      cidrs = [var.vpc_workload_subnet_cidr]
    }
  }
}

# Create ODB Peering Connection
module "network_peering" {
  depends_on = [module.odb_network, module.aws_ia_vpc]
  source        = "../../modules/aws-odb-peering"
  odb_network_id  = local.odb_network_id
  peer_network_id = local.peer_network_id
  display_name    = var.odb_peering_connection_display_name
}

#Create exa data infrastructure
module "exadata_infrastructure" {
  source                                 = "../../modules/aws-odb-exadata-infra"
  aws_odb_exa_infra_availability_zone_id = var.availability_zone_id
  exa_infra_display_name                 = var.exadata_infrastructure_name
  exa_infra_shape                        = var.exadata_infrastructure_shape
  compute_count                          = var.exadata_infrastructure_compute_count
  storage_count                          = var.exadata_infrastructure_storage_count
  tags                                   = var.tags
  maintenance_window                     = var.exadata_infrastructure_maintenance_window
  customer_contacts_to_send_to_oci       = var.exadata_infrastructure_customer_contacts
}

# Create  VM cluster in OCI
module "exadata_vm_cluster" {
  depends_on = [ module.exadata_infrastructure ]
  source                        = "../../modules/aws-odb-vmc"

  # General settings
  vm_cluster_name = var.vmc_vm_cluster_name
  gi_cluster_name = var.vmc_gi_cluster_name
  time_zone       = var.vmc_time_zone
  license_model   = var.vmc_license_model
  # Infrastructure
  aws_odb_exa_resource_id = local.cloud_exadata_infrastructure_id
  gi_version              = var.vmc_gi_version
  db_servers              = var.vmc_db_servers
  # Configuration
  cpu_core_count_per_vm              = var.vmc_cpu_core_count_per_vm
  memory_size_in_gbs_per_vm          = var.vmc_memory_size_in_gbs_per_vm
  db_node_storage_size_in_gbs_per_vm = var.vmc_db_node_storage_size_in_gbs_per_vm
  data_storage_size_in_tbs           = var.vmc_data_storage_size_in_tbs
  is_local_backup_enabled            = var.vmc_is_local_backup_enabled
  is_sparse_diskgroup_enabled        = var.vmc_is_sparse_diskgroup_enabled
  # Connectivity
  aws_odb_network_resource_id = local.odb_network_id
  hostname_prefix             = var.vmc_hostname_prefix
  scan_listener_port_tcp      = var.vmc_scan_listener_port_tcp
  ssh_public_keys             = [for ssh_public_key in var.vmc_vm_ssh_public_keys_paths : file(ssh_public_key)]
  # Diagnostics and tags
  tags                          = var.tags
  is_diagnostics_events_enabled = var.vmc_is_diagnostics_events_enabled
  is_health_monitoring_enabled  = var.vmc_is_health_monitoring_enabled
  is_incident_logs_enabled      = var.vmc_is_incident_logs_enabled
}
