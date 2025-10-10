locals {
  # Use the oci_region from variable if provided, otherwise get it from the autonomous_vm_cluster module
  oci_region = coalesce(var.oci_region, module.autonomous_vm_cluster.oci_region)

  # IDs of depending resources
  compartment_ocid         = module.autonomous_vm_cluster.oci_compartment_ocid
  autonomous_vm_cluster_id = module.autonomous_vm_cluster.oci_resource_ocid
}

module "acd" {
  source                   = "../../modules/oci-db-acd"
  depends_on               = [module.autonomous_vm_cluster]
  acd_display_name         = var.acd_display_name
  acd_patch_model          = var.acd_patch_model
  autonomous_vm_cluster_id = local.autonomous_vm_cluster_id
}

# Create the Autonomous Database
module "adb" {
  source                           = "../../modules/oci-db-adb"
  depends_on                       = [module.acd]
  autonomous_container_database_id = module.acd.oci_resource_ocid
  compartment_ocid                 = local.compartment_ocid
  db_name                          = var.adb_db_name
  admin_password                   = var.adb_admin_password
  compute_model                    = var.adb_compute_model
  compute_count                    = var.adb_compute_count
  data_storage_size_in_tbs         = var.adb_data_storage_size_in_tbs
}

