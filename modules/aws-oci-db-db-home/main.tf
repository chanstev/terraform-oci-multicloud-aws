# Create the OCI database DB home
resource "oci_database_db_home" "this" {
  vm_cluster_id = var.vm_cluster_ocid
  source        = var.db_home_source
  display_name  = var.db_home_name
  db_version    = var.db_home_version
}