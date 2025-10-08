variable "autonomous_vm_cluster_display_name" {
  type        = string
  description = "Display name for the Autonomous VM cluster"
}

variable "aws_odb_exa_resource_id" {
  type        = string
  description = "ODB Exadata Resource ID"
}

variable "aws_odb_network_resource_id" {
  type        = string
  description = "ODB Network Resource ID"
}

variable "autonomous_data_storage_size_in_tbs" {
  type        = number
  description = "Number of autonomous data storage size in tbs for the Autonomous VM cluster"
  default = 5
}

variable "memory_per_oracle_compute_unit_in_gbs" {
  type        = number
  description = "Number of gbs memory per oracle compute unit for the Autonomous VM cluster"
  default = 2
}

variable "total_container_databases" {
  type        = number
  description = "total number of container databases for the Autonomous VM cluster"
  default = 1
}

variable "cpu_core_count_per_node" {
  type        = number
  description = "Number of CPU cores per node for the Autonomous VM cluster"
  default     = 40
}

variable "db_servers" {
  type        = set(string)
  description = "The set of database servers IDs to be used for the Autonomous VM cluster"
  default     = null
}

variable "description" {
  type        = string
  description = "A user-provided description of the Autonomous VM cluster"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the Autonomous VM cluster"
  default     = null
}

variable "time_zone" {
  type        = string
  description = "The time zone to use for the Autonomous VM cluster"
  default     = "UTC"
}

variable "license_model" {
  type        = string
  description = "The Oracle license model to apply to the Autonomous VM cluster"
  default     = "BRING_YOUR_OWN_LICENSE"
}

variable "is_mtls_enabled_vm_cluster" {
  type        = bool
  description = "Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster"
  default     = false
}

variable "scan_listener_port_non_tls" {
  type        = number
  description = "The SCAN listener port for non-TLS (TCP) protocol"
  default = 1521
}

variable "scan_listener_port_tls" {
  type        = number
  description = "The SCAN listener port for TLS (TCP) protocol"
  default = 2484
}

# variable "maintenance_window_days_of_week" {
#   type        = set(object({
#     name = string
#   }))
#   description = "Maintenance window days of week"
#   default     = null
# }

# variable "maintenance_window_hours_of_day" {
#   type        = set(number)
#   description = "Maintenance window hours of day"
#   default     = null
# }

# variable "maintenance_window_lead_time_in_weeks" {
#   type        = number
#   description = "Maintenance window lead time in weeks"
#   default     = null
# }

# variable "maintenance_window_months" {
#   type        = set(object({
#     name = string
#   }))
#   description = "Maintenance window months"
#   default     = null
# }

# variable "maintenance_window_preference" {
#   type        = string
#   description = "Maintenance window preference"
# }

# variable "maintenance_window_weeks_of_month" {
#   type        = set(number)
#   description = "Maintenance window weeks of month"
#   default     = null
# }
variable "maintenance_window" {
  description = "Maintenance window configuration for the Autonomous VM cluster"
  type = object({
    preference                       = string
    days_of_week = optional(set(object(
      { name = string }
    )))
    hours_of_day       = optional(set(number))
    lead_time_in_weeks = optional(number)
    months = optional(set(object(
      { name = string }
    )))
    weeks_of_month = optional(set(number))
  })
  default = {
    preference                       = "NO_PREFERENCE"
  }
}
