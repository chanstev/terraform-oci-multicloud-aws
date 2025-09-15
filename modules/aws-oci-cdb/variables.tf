variable "exa_db_home_ocid" {
  type        = string
  description = "The OCID of the Exadata DB Home"
}

variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "db_admin_password" {
  type        = string
  sensitive   = true
  description = "The administrator password for the database"
}

variable "db_source" {
  type        = string
  default     = "NONE"
  description = "The source of the database. Possible values are NONE, DB_BACKUP, DATABASE, or CROSS_REGION_DATAGUARD"
}