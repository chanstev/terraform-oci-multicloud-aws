# Create autonomous CDB 
module "auto_cdb" {
  source = "../../modules/aws-oci-auto-cdb"
  depends_on = [ module.autonomous_vm_cluster ]
  auto_cdb_display_name = var.auto_cdb_display_name
  auto_cdb_patch_model = var.auto_cdb_patch_model
  autonomous_vm_cluster_id = module.autonomous_vm_cluster.avm_cluster_ocid
  auto_cdb_database_db_name = var.auto_cdb_database_db_name
  auto_cdb_db_unique_name = var.auto_cdb_db_unique_name
  auto_cdb_db_version = var.auto_cdb_db_version
  auto_cdb_db_source = var.auto_cdb_db_source
}

module "pdbs" {
  source              = "../../modules/oci-db-pdb"
  depends_on = [ module.auto_cdb ]
  container_database_ocid = module.auto_cdb.cdb_id
  pdb_details = var.pdbs
}
