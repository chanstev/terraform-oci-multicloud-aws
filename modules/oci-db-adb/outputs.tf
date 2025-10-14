output "oci_resource_ocid" {
  value       = oci_database_autonomous_database.this.id
  description = "The OCID of the Autonomous Database"
}

output "oci_resource" {
  value       = oci_database_autonomous_database.this
  description = "The resource object of the Autonomous Database"
}