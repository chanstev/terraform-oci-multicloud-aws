# Create the OCI PDB
resource "oci_database_pluggable_database" "this" {
  container_database_id = var.container_database_ocid
  pdb_name              = var.pdb_name
  pdb_admin_password    = var.pdb_admin_password
  tde_wallet_password   = var.pdb_tde_wallet_password
}