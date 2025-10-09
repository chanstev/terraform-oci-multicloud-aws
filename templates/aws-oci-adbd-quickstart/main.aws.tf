#Create exa data infrastructure
module "exadata_infrastructure" {
  source                                 = "../../modules/aws-odb-exadata-infra"
  exa_infra_display_name                 = var.infra_display_name
  aws_odb_exa_infra_availability_zone_id = var.availability_zone
  exa_infra_shape                        = var.infra_shape
  compute_count                          = var.compute_count
  storage_count                          = var.storage_count
  tags                                   = var.tags
  maintenance_window          = {
    patching_mode = var.infra_maintenance_window_patching_mode
    preference    = var.infra_maintenance_window_preference
    is_custom_action_timeout_enabled = var.infra_maintenance_window_is_custom_action_timeout_enabled
    custom_action_timeout_in_mins = var.infra_maintenance_window_custom_action_timeout_in_mins
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
  peer_network_id = var.vpc_id
  display_name    = "NetworkPeering-${module.odb_network.aws_odb_network_resource_id}-${var.vpc_id}"
}

# Create autonomous VM cluster in OCI
module "autonomous_vm_cluster" {
  source               = "../../modules/aws-odb-avmc"
  autonomous_vm_cluster_display_name = var.vm_display_name
  aws_odb_exa_resource_id = module.exadata_infrastructure.exa_resource_ocid
  aws_odb_network_resource_id = module.odb_network.aws_odb_network_resource_id
  autonomous_data_storage_size_in_tbs = var.autonomous_data_storage_size_in_tbs
  memory_per_oracle_compute_unit_in_gbs = var.memory_per_oracle_compute_unit_in_gbs
  total_container_databases = var.total_container_databases
  cpu_core_count_per_node = var.cpu_core_count_per_node
  db_servers = var.db_servers
  license_model = var.license_model
  is_mtls_enabled_vm_cluster = var.is_mtls_enabled_vm_cluster
  scan_listener_port_non_tls = var.scan_listener_port_non_tls
  scan_listener_port_tls = var.scan_listener_port_tls
  maintenance_window_preference = var.avmc_maintenance_window_preference
}