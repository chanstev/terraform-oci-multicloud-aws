locals {
  # IDs of depending resources
  cloud_exadata_infrastructure_id = module.exadata_infrastructure.aws_odb_exa_resource_id
  odb_network_id = module.odb_network.aws_odb_network_resource_id
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

# VPC for ODB Peering Connection (if not using existing VPC)
module "aws_ia_vpc" {
  count = var.odb_peering_connection_peer_network_id == null ? 1 : 0
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
  depends_on = [ module.odb_network ]
  source        = "../../modules/aws-odb-peering"
  odb_network_id  = local.odb_network_id
  peer_network_id = local.peer_network_id
  display_name    = var.odb_peering_connection_display_name
}

#Create exa data infrastructure
module "exadata_infrastructure" {
  # source                                 = "../../modules/aws-odb-exadata-infra"
  source                                 = "github.com/chanstev/terraform-oci-multicloud-aws//modules/aws-odb-exadata-infra"
  aws_odb_exa_infra_availability_zone_id = var.availability_zone_id
  exa_infra_display_name                 = var.exadata_infrastructure_name
  exa_infra_shape                        = var.exadata_infrastructure_shape
  compute_count                          = var.exadata_infrastructure_compute_count
  storage_count                          = var.exadata_infrastructure_storage_count
  tags                                   = var.tags
  maintenance_window                     = var.exadata_infrastructure_maintenance_window
  customer_contacts_to_send_to_oci       = var.exadata_infrastructure_customer_contacts
}

# Create autonomous VM cluster in OCI
module "autonomous_vm_cluster" {
  depends_on = [ module.odb_network, module.exadata_infrastructure ]
  source                                = "../../modules/aws-odb-avmc"
  autonomous_vm_cluster_display_name    = var.avmc_name
  aws_odb_exa_resource_id               = local.cloud_exadata_infrastructure_id
  aws_odb_network_resource_id           = local.odb_network_id
  autonomous_data_storage_size_in_tbs   = var.avmc_autonomous_data_storage_size_in_tbs
  memory_per_oracle_compute_unit_in_gbs = var.avmc_memory_per_oracle_compute_unit_in_gbs
  total_container_databases             = var.avmc_total_container_databases
  cpu_core_count_per_node               = var.avmc_cpu_core_count_per_node
  db_servers                            = var.avmc_db_servers
  license_model                         = var.avmc_license_model
  is_mtls_enabled_vm_cluster            = var.avmc_is_mtls_enabled_vm_cluster
  scan_listener_port_non_tls            = var.avmc_scan_listener_port_non_tls
  scan_listener_port_tls                = var.avmc_scan_listener_port_tls
  maintenance_window                    = var.avmc_maintenance_window
  tags                                  = var.tags
}
