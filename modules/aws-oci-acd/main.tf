# Create the Autonomous Container Database
resource "oci_database_autonomous_container_database" "this" {
  cloud_autonomous_vm_cluster_id = var.autonomous_vm_cluster_id
  display_name = var.auto_cdb_display_name
  patch_model  = var.auto_cdb_patch_model
}