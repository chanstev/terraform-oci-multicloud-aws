locals {
  # Use the oci_region from variable if provided, otherwise get it from the autonomous_vm_cluster module
  oci_region = coalesce(var.oci_region, module.exadata_vm_cluster.oci_region)

  # IDs of depending resources
  compartment_ocid         = module.exadata_vm_cluster.oci_compartment_ocid
  autonomous_vm_cluster_id = module.exadata_vm_cluster.oci_resource_ocid
}

# Set database home in newly created vm cluster
module "db_home" {
  source     = "../../modules/oci-db-dbhome"
  depends_on = [module.exadata_vm_cluster]

  vm_cluster_ocid = module.exadata_vm_cluster.oci_resource_ocid
  db_home_source  = var.db_home_source
  db_home_name    = var.db_home_name
  db_home_version = var.db_home_version
}

module "cdb" {
  source     = "../../modules/oci-db-cdb"
  depends_on = [module.db_home]

  exa_db_home_ocid  = module.db_home.oci_resource_ocid
  db_name           = var.cdb_name
  db_admin_password = var.cdb_admin_password
  db_source         = var.cdb_source
  auto_backup       = var.cdb_auto_backup_enabled
}

module "pdb" {
  depends_on = [module.cdb]
  source     = "../../modules/oci-db-pdb"

  container_database_ocid = module.cdb.oci_resource_ocid
  pdb_name                = var.pdb_name
  pdb_admin_password      = var.pdb_admin_password
  pdb_tde_wallet_password = var.pdb_tde_wallet_password
}
