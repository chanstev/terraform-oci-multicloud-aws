# Create the OCI CDB
resource "oci_database_database" "this" {
  db_home_id = var.exa_db_home_ocid
  database {
    db_name        = var.db_name
    admin_password = var.db_admin_password
  }
  source     = var.db_source
}