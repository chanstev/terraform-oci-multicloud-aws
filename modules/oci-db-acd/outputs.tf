output "oci_resource_ocid" {
  value       = oci_database_autonomous_container_database.this.id
  description = "The OCID of the Autonomous Container Database"
}
