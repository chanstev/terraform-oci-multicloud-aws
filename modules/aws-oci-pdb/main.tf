# Create the OCI PDB
resource "oci_database_pluggable_database" "this" {
  for_each              = var.pdb_details
  container_database_id = var.container_database_ocid
  pdb_name              = each.value.pdb_name
  pdb_admin_password    = each.value.pdb_admin_password
  tde_wallet_password   = each.value.pdb_wallet_password
}