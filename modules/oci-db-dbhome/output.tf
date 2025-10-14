output "oci_resource_ocid" {
  value       = oci_database_db_home.this.id
  description = "The OCID of the Database Home"
}

output "oci_resource" {
  value       = oci_database_db_home.this
  description = "The resource object of the Database Home"
}