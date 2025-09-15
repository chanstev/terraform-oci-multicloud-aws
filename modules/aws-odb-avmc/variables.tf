variable "autonomous_vm_cluster_display_name" {
  type        = string
  description = "Display name for the autonomous VM cluster"
}

variable "aws_odb_exa_resource_id" {
  type        = string
  description = "OBD Exadata Resource ID"
}

variable "aws_odb_network_resource_id" {
  type        = string
  description = "OBD Network Resource ID"
}

variable "autonomous_data_storage_size_in_tbs" {
  type        = number
  description = "Number of autonomous data storage size in tbs for the autonomous VM cluster"
}

variable "memory_per_oracle_compute_unit_in_gbs" {
  type        = number
  description = "Number of gbs memory per oracle compute unit for the autonomous VM cluster"
}

variable "total_container_databases" {
  type        = number
  description = "total number of container databases for the autonomous VM cluster"
}

variable "cpu_core_count_per_node" {
  type        = number
  description = "Number of CPU cores per node for the autonomous VM cluster"
}

variable "db_servers" {
  type        = set(string)
  description = "The set of database servers to be used for the Autonomous VM cluster"
}

variable "description" {
  type        = string
  description = "A user-provided description of the Autonomous VM cluster"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the autonomous VM cluster"
  default     = null
}

variable "time_zone" {
  type        = string
  description = "The time zone to use for the Autonomous VM cluster"
  default     = null
}

variable "license_model" {
  type        = string
  description = "The Oracle license model to apply to the Autonomous VM cluster"
  default     = null
}

variable "is_mtls_enabled_vm_cluster" {
  type        = bool
  description = "Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster"
  default     = false
}

variable "scan_listener_port_non_tls" {
  type        = number
  description = "The SCAN listener port for non-TLS (TCP) protocol"
}

variable "scan_listener_port_tls" {
  type        = number
  description = "The SCAN listener port for TLS (TCP) protocol"
}

variable "maintenance_window" {
  description = "The maintenance window configuration for the Autonomous VM Cluster"
  type        = object({
    custom_action_timeout_in_mins = number
    days_of_week = set(string)
    hours_of_day = set(number)
    is_custom_action_timeout_enabled = bool
    lead_time_in_weeks = number
    months = set(string)
    patching_mode = string
    preference = string
    skip_ru = bool
    weeks_of_month = set(number)
  })
}