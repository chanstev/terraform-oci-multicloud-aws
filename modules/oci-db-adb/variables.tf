variable "admin_password" {
  type        = string
  description = "The administrator password of the Autonomous Database"
  sensitive   = true
}

variable "compartment_ocid" {
  type        = string
  description = "The OCID of the Compartment"
}

variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "db_version" {
  type        = string
  description = "The version of the database"
  default     = null
}

variable "display_name" {
  type        = string
  description = "The name of the Autonomous Database"
  default     = null
}

variable "db_workload" {
  type        = string
  description = "The workload of the database"
  default     = null
}

variable "compute_count" {
  type        = number
  description = "The compute count of the Autonomous Database"
  default     = null
}

variable "data_storage_size_in_tbs" {
  type        = number
  description = "The data storage size of the Autonomous Database in tbs"
  default     = null
}

variable "compute_model" {
  type        = string
  description = "The compute model of the Autonomous Database"
  default     = null
}

variable "is_dedicated" {
  type        = string
  description = "Is the Autonomous Database dedicated"
  default     = null
}

variable "is_mtls_connection_required" {
  type        = string
  description = "Is the mtls connection required in the Autonomous Database"
  default     = null
}

variable "license_model" {
  type        = string
  description = "The license model of the Autonomous Database creation"
  default     = null
}

variable "whitelisted_ips" {
  type        = set(string)
  description = "The set of whitelisted IPs for the Autonomous Database"
  default     = null
}

variable "is_data_guard_enabled" {
  type        = string
  description = "Is the data guard enabled in the Autonomous Database"
  default     = null
}

variable "is_local_data_guard_enabled" {
  type        = string
  description = "Is the local data guard enabled in the Autonomous Database"
  default     = null
}