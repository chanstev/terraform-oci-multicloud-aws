# Create autonomous CDB 
module "auto_cdb" {
  source = "../../modules/aws-oci-acd"
  depends_on = [ module.autonomous_vm_cluster ]
  auto_cdb_display_name = var.auto_cdb_display_name
  auto_cdb_patch_model = var.auto_cdb_patch_model
  autonomous_vm_cluster_id = module.autonomous_vm_cluster.avm_cluster_ocid
}

module "pdbs" {
  source              = "../../modules/aws-oci-pdb"
  depends_on = [ module.auto_cdb ]
  container_database_ocid = module.auto_cdb.acd_id
  pdb_details = var.pdbs
}
