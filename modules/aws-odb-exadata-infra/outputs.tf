output "resource_id" {
  description = "Exadata Infrastructure ID in AWS"
  value       = aws_odb_cloud_exadata_infrastructure.this.id
}

output "resource" {
  description = "AWS resource object of the Exadata Infrastructure "
  value       = aws_odb_cloud_exadata_infrastructure.this
}

output "oci_url" {
  description = "OCI Console URL of the Exadata Infrastructure"
  value       = aws_odb_cloud_exadata_infrastructure.this.oci_url
}

output "oci_tenant" {
  description = "OCI tenant of the Exadata Infrastructure"
  value       = regex("(?:tenant=)([^?&/]+)", aws_odb_cloud_exadata_infrastructure.this.oci_url)[0]
}

output "oci_region" {
  description = "OCI region of theExadata Infrastructure"
  value       = regex("(?:region=)([^?&/]+)", aws_odb_cloud_exadata_infrastructure.this.oci_url)[0]
}

output "oci_compartment_ocid" {
  description = "OCI compartment OCID of the Exadata Infrastructure"
  value       = regex("(?:compartmentId=)([^?&/]+)", aws_odb_cloud_exadata_infrastructure.this.oci_url)[0]
}

output "oci_resource_ocid" {
  description = "OCID of the Exadata Infrastructure in OCI"
  value       = aws_odb_cloud_exadata_infrastructure.this.ocid
}
