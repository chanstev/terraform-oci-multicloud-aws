output "database_db_home" {
  description = "The Database DB home"
  value       = length(oci_database_db_home.this) > 0 ? oci_database_db_home.this[*] : null
  sensitive = true
}

output "db_home_ocid" {
  description = "The OCID of the DB Home"
  value       = oci_database_db_home.this.id
}