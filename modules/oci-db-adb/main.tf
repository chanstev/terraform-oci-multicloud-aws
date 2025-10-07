# Create the OCI ADBD
resource "oci_database_autonomous_database" "this" {
  admin_password              = var.admin_password
  compartment_id              = var.compartment_ocid
  db_name                     = var.db_name
  compute_count               = var.compute_count
  compute_model               = var.compute_model
  data_storage_size_in_tbs    = var.data_storage_size_in_tbs
  db_version                  = var.db_version
  db_workload                 = var.db_workload
  display_name                = var.display_name
  is_dedicated                = var.is_dedicated
  is_mtls_connection_required = var.is_mtls_connection_required
  license_model               = var.license_model
  whitelisted_ips             = var.whitelisted_ips
  is_data_guard_enabled       = var.is_data_guard_enabled
  is_local_data_guard_enabled = var.is_local_data_guard_enabled
}