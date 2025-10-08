output "cdb_id" {
  value       = oci_database_database.this.id
  description = "The OCID of the created CDB"
}

output "cdb_name" {
  value       = oci_database_database.this.database[0].db_name
  description = "The name of the created CDB"
}

output "cdb_state" {
  value       = oci_database_database.this.state
  description = "The current state of the created CDB"
}

output "cdb_db_home_id" {
  value       = oci_database_database.this.db_home_id
  description = "The OCID of the DB Home where the CDB was created"
}

output "cdb_admin_password" {
  value       = oci_database_database.this.database[0].admin_password
  description = "The administrator password for the created CDB. This is required for the pdb"
  sensitive   = true
}

output "cdb_source" {
  value       = oci_database_database.this.source
  description = "The source of the created CDB"
}