output "oci_resource_ocid" {
  value       = oci_database_database.this.id
  description = "The OCID of the Container Database"
}

output "oci_resource" {
  value       = oci_database_database.this
  description = "The resource object of the Container Database"
}