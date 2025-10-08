output "db_name" {
  value = oci_database_autonomous_database.this.display_name
}

output "db_state" {
  value = oci_database_autonomous_database.this.state
}

output "db_conn" {
  value = oci_database_autonomous_database.this.connection_urls
}

output "password" {
  value = "The password is ${oci_database_autonomous_database.this.admin_password}"
  sensitive = true
}