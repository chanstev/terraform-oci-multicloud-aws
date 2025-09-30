output "aws_odb_network_resource_id" {
  description = "Resource ID of ODB network in AWS"
  value       = aws_odb_network.this.id
}

output "aws_odb_network_resource" {
  description = "AWS ODB network resource"
  value       = aws_odb_network.this
}

output "aws_odb_network_oci_vcn_id" {
  description = "AWS ODB network OCI id"
  value       = aws_odb_network.this.oci_vcn_id
}

output "aws_odb_network_managed_services" {
  description = "AWS ODB network managed services"
  value       = aws_odb_network.this.managed_services
}

output "aws_odb_network_oci_compartment_ocid" {
  description = "ODB Network compartment OCID in OCI"
  value       = regex("(?:compartmentId=)([^?&/]+)", aws_odb_network.this.oci_vcn_url)[0]
}
