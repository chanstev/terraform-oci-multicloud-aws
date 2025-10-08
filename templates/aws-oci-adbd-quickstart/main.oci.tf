# Create autonomous Container Database
module "acd" {
  source = "../../modules/oci-db-acd"
  depends_on = [ module.autonomous_vm_cluster ]
  acd_display_name = var.acd_display_name
  acd_patch_model = var.acd_patch_model
  autonomous_vm_cluster_id = module.autonomous_vm_cluster.avm_cluster_ocid
}

# Create the Autonomous Database
module "adbd" {
  source              = "../../modules/oci-db-adb"
  depends_on = [ module.acd ]
  admin_password           = var.ad_admin_password
  compartment_ocid         = module.exadata_infrastructure.oci_compartment_ocid
  db_name                  = var.ad_db_name
  compute_model            = var.ad_compute_model
  compute_count            = var.ad_compute_count
  data_storage_size_in_tbs = var.ad_data_storage_size_in_tbs
}
