output "avm_cluster_arn" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.arn
  description = "AVM Cluster ARN"
}

output "avm_cluster_display_name" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.display_name
  description = "AVM Cluster Display Name"
}

output "avm_cluster_ocid" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.ocid
  description = "AVM Cluster OCID"
}

output "avm_cluster_oci_url" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.oci_url
  description = "AVM Cluster OCI URL"
}

output "avm_cluster_hostname" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.hostname
  description = "AVM Cluster Hostname"
}

output "avm_cluster_status" {
  value       = aws_odb_cloud_autonomous_vm_cluster.this.status
  description = "AVM Cluster Status"
}
