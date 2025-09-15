output "aws_odb_exa_resource_id" {
  description = "Exadata Infrastructure ID in AWS"
  value       = aws_odb_cloud_exadata_infrastructure.this.id
}

output "exa_resource_ocid" {
  description = "Exadata Infrastructure OCID"
  value       = aws_odb_cloud_exadata_infrastructure.this.ocid
}

output "aws_odb_exa_resource" {
  description = "Exadata Infrastructure resource"
  value       = aws_odb_cloud_exadata_infrastructure.this
}

output "oci_region" {
  description = "Exadata Infrastructure region in OCI"
  value       = regex("(?:region=)([^?&/]+)", aws_odb_cloud_exadata_infrastructure.this.oci_url)[0]
}

output "oci_compartment_ocid" {
  description = "Exadata Infrastructure compartment OCID in OCI"
  value       = regex("(?:compartmentId=)([^?&/]+)", aws_odb_cloud_exadata_infrastructure.this.oci_url)[0]
}
