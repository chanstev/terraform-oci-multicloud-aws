output "vm_cluster_id" {
  value       = aws_odb_cloud_vm_cluster.this.id
  description = "VM Cluster ID"
}

output "vm_cluster_display_name" {
  value       = aws_odb_cloud_vm_cluster.this.display_name
  description = "VM Cluster Display Name"
}

output "vm_cluster_ocid" {
  value       = aws_odb_cloud_vm_cluster.this.ocid
  description = "VM Cluster OCID"
}

output "vm_cluster_oci_url" {
  value       = aws_odb_cloud_vm_cluster.this.oci_url
  description = "VM Cluster OCI URL"
}

output "vm_cluster_arn" {
  value       = aws_odb_cloud_vm_cluster.this.arn
  description = "VM Cluster ARN"
}

output "vm_cluster_compartment_id" {
  value       = aws_odb_cloud_vm_cluster.this.compartment_id
  description = "VM Cluster Compartment ID"
}