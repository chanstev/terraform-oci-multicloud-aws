# Set database home in newly created vm cluster
module "oci_database_db_home" {
  source          = "../../modules/aws-oci-db-db-home"
  depends_on = [
    module.odb_vm_cluster
  ]
  vm_cluster_ocid = module.odb_vm_cluster.vm_cluster_ocid
  db_home_source  = var.db_home_source
  db_home_name    = var.db_home_display_name
  db_home_version = var.db_version
}

module "cdb" {
  source              = "../../modules/aws-oci-cdb"
  depends_on = [
    module.oci_database_db_home
  ]
  exa_db_home_ocid = module.oci_database_db_home.db_home_ocid
  db_name = var.cdb.name
  db_admin_password=var.cdb.admin_password  
  db_source     = var.cdb.source
  auto_backup = var.auto_backup
}

module "pdbs" {
  depends_on = [
    module.cdb
  ]
  source              = "../../modules/aws-oci-pdb"
  container_database_ocid = module.cdb.cdb_id
  pdb_details = var.pdbs
}