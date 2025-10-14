output "oci_resource_ocid" {
  value       = oci_database_autonomous_container_database.this.id
  description = "The OCID of the Autonomous Container Database"
}

output "oci_resource" {
  value       = oci_database_autonomous_container_database.this
  description = "The resource object of the Autonomous Container Database"
}