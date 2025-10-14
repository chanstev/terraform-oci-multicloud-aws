output "oci_resource_ocid" {
  value       = oci_database_pluggable_database.this.id
  description = "The OCID of the Pluggable Database"
}

output "oci_resource" {
  value       = oci_database_pluggable_database.this
  description = "The resource object of the Pluggable Database"
}