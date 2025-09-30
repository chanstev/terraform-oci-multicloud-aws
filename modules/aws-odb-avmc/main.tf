# Create the autonomous VM cluster
data "aws_odb_db_servers" "this" {
  cloud_exadata_infrastructure_id = var.aws_odb_exa_resource_id
}

resource "aws_odb_cloud_autonomous_vm_cluster" "this" {
  display_name                           = var.autonomous_vm_cluster_display_name
  cloud_exadata_infrastructure_id        = var.aws_odb_exa_resource_id
  odb_network_id                         = var.aws_odb_network_resource_id
  autonomous_data_storage_size_in_tbs    = var.autonomous_data_storage_size_in_tbs
  memory_per_oracle_compute_unit_in_gbs  = var.memory_per_oracle_compute_unit_in_gbs
  total_container_databases              = var.total_container_databases
  cpu_core_count_per_node                = var.cpu_core_count_per_node
  db_servers                             = var.db_servers == null ? [for db_server in data.aws_odb_db_servers.this.db_servers : db_server.id] : var.db_servers
  description                            = var.description
  tags                                   = var.tags
  time_zone                              = var.time_zone
  license_model                          = var.license_model
  is_mtls_enabled_vm_cluster             = var.is_mtls_enabled_vm_cluster
  scan_listener_port_non_tls             = var.scan_listener_port_non_tls
  scan_listener_port_tls                 = var.scan_listener_port_tls
  maintenance_window {
        days_of_week                     = var.maintenance_window_days_of_week
        hours_of_day                     = var.maintenance_window_hours_of_day
        lead_time_in_weeks               = var.maintenance_window_lead_time_in_weeks
        months                           = var.maintenance_window_months
        preference                       = var.maintenance_window_preference
        weeks_of_month                   = var.maintenance_window_weeks_of_month
  }
}