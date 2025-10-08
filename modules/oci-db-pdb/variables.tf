variable "container_database_ocid" {
  description = "OCID of the container database on which pdb(s) are going to be hosted"
  type = string
}

variable "pdb_details" {
  description = "A map encapsulating PDB(s) details"
  type = map(object({
    pdb_name = string
    pdb_admin_password = string
    pdb_wallet_password = string
  }))
}