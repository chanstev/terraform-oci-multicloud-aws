# Create the VM cluster
data "aws_odb_db_servers" "this" {
  cloud_exadata_infrastructure_id = var.aws_odb_exa_resource_id
}

resource "aws_odb_cloud_vm_cluster" "this" {
  cloud_exadata_infrastructure_id = var.aws_odb_exa_resource_id
  cpu_core_count                  = var.cpu_core_count
  gi_version                      = var.gi_version
  display_name                    = var.vm_cluster_display_name
  hostname_prefix                 = var.hostname_prefix
  ssh_public_keys                 = var.ssh_public_keys
  odb_network_id                  = var.aws_odb_network_resource_id
  cluster_name                    = var.cluster_name
  data_collection_options {
    is_diagnostics_events_enabled = var.is_diagnostics_events_enabled
    is_health_monitoring_enabled  = var.is_health_monitoring_enabled
    is_incident_logs_enabled      = var.is_incident_logs_enabled
  }
  data_storage_size_in_tbs        = var.data_storage_size_in_tbs
  db_node_storage_size_in_gbs     = var.db_node_storage_size_in_gbs
  db_servers                      = var.db_servers == null ? [for db_server in data.aws_odb_db_servers.this.db_servers : db_server.id] : var.db_servers
  tags                            = var.tags
  is_local_backup_enabled         = var.is_local_backup_enabled
  is_sparse_diskgroup_enabled     = var.is_sparse_diskgroup_enabled
  license_model                   = var.license_model
  memory_size_in_gbs              = var.memory_size_in_gbs
  timezone                        = var.time_zone
  scan_listener_port_tcp          = var.scan_listener_port_tcp
  system_version                  = var.system_version
}