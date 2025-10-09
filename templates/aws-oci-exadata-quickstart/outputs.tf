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

output "vm_cluster_id" {
  value       = module.odb_vm_cluster.vm_cluster_id
  description = "VM Cluster ID"
}

output "vm_cluster_ocid" {
  value       = module.odb_vm_cluster.vm_cluster_ocid
  description = "VM Cluster OCID"
}

output "db_home_ocid" {
  description = "The OCID of the DB Home"
  value       = module.oci_database_db_home.db_home_ocid
}

output "cdb_id" {
  value       = module.cdb.cdb_id
  description = "The OCID of the created CDB"
}

output "pdb_id" {
  value       = module.pdbs.pdb_id
  description = "The OCID(s) of the created pluggable database(s)"
}
