output "aws_odb_exa_resource_id" {
  description = "Exadata Infrastructure ID in AWS"
  value       = module.exadata_infrastructure.aws_odb_exa_resource_id
}

output "exa_resource_ocid" {
  description = "Exadata Infrastructure OCID"
  value       = module.exadata_infrastructure.exa_resource_ocid
}

output "aws_odb_network_resource_id" {
  description = "Resource ID of ODB network in AWS"
  value       = module.odb_network.aws_odb_network_resource_id
}

output "aws_odb_network_oci_vcn_id" {
  description = "AWS ODB network OCI id"
  value       = module.odb_network.aws_odb_network_oci_vcn_id
}

output "odb_peering_connection" {
  value       = module.network_peering.odb_peering_connection.id
  description = "ODB Peering Connection"
}

output "avm_cluster_id" {
  value       = module.autonomous_vm_cluster.avm_cluster_id
  description = "AVM Cluster ID"
}

output "avm_cluster_ocid" {
  value       = module.autonomous_vm_cluster.avm_cluster_ocid
  description = "AVM Cluster OCID"
}

output "acd_id" {
  value       = module.acd.acd_id
  description = "The OCID of the created ACD"
}

output "db_id" {
  value = module.adbd.db_id
  description = "The OCID of the created ADBD"
}
