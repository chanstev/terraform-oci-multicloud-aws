output "pdb_id" {
  value = { for key, pdb in oci_database_pluggable_database.this : key => pdb.id }
  description = "The OCID(s) of the created pluggable database(s)"
}