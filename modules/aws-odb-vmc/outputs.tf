output "resource_id" {
  description = "VM Cluster ID in AWS"
  value       = aws_odb_cloud_vm_cluster.this.id
}

output "resource" {
  description = "AWS resource object of the VM Cluster"
  value       = aws_odb_cloud_vm_cluster.this
}

output "oci_url" {
  description = "OCI Console URL of the VM Cluster"
  value       = aws_odb_cloud_vm_cluster.this.oci_url
}

output "oci_tenant" {
  description = "OCI tenant of the VM Cluster"
  value       = regex("(?:tenant=)([^?&/]+)", aws_odb_cloud_vm_cluster.this.oci_url)[0]
}

output "oci_region" {
  description = "OCI region of the VM Cluster"
  value       = regex("(?:region=)([^?&/]+)", aws_odb_cloud_vm_cluster.this.oci_url)[0]
}

output "oci_compartment_ocid" {
  description = "OCI compartment OCID of the VM Cluster"
  value       = regex("(?:compartmentId=)([^?&/]+)", aws_odb_cloud_vm_cluster.this.oci_url)[0]
}

output "oci_resource_ocid" {
  description = "OCID of the VM Cluster in OCI"
  value       = aws_odb_cloud_vm_cluster.this.ocid
}
