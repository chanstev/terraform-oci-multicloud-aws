variable "container_database_ocid" {
  description = "OCID of the container database on which pdb(s) are going to be hosted"
  type        = string
}
variable "pdb_name" {
  type    = string
  default = "Name of the Pluggable Database"
}
variable "pdb_admin_password" {
  type      = string
  sensitive = true
  default   = "Admin password of the Pluggable Database"
}
variable "pdb_tde_wallet_password" {
  type      = string
  sensitive = true
  default   = "TDE wallet password of the Pluggable Database"
}
