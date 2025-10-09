output "resource_id" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.id
  description = "Autonomous VM Cluster ID in AWS"
}

output "resource" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this
  description = "AWS resource object of the Autonomous VM Cluster"
}

output "oci_url" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.oci_url
  description = "OCI Console URL of the Autonomous VM Cluster"
}

output "oci_tenant" {
  description = "OCI tenant of the Autonomous VM Cluster"
  value       = regex("(?:tenant=)([^?&/]+)", aws_odb_cloud_autonomous_vm_cluster.this.oci_url)[0]
  
}

output "oci_region" {
  description = "OCI region of the Autonomous VM Cluster"
  value       = regex("(?:region=)([^?&/]+)", aws_odb_cloud_autonomous_vm_cluster.this.oci_url)[0]
}

output "oci_compartment_ocid" {
  description = "OCI compartment OCID of the Autonomous VM Cluster"
  value       = regex("(?:compartmentId=)([^?&/]+)", aws_odb_cloud_autonomous_vm_cluster.this.oci_url)[0]
}

output "oci_resource_ocid" {
  description = "OCID of the Autonomous VM Cluster in OCI"
  value       = aws_odb_cloud_autonomous_vm_cluster.this.ocid
}