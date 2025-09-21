variable "aws_odb_exa_resource_id" {
  type        = string
  description = "OBD Exadata Infrastructure Resource ID"
}

variable "cpu_core_count" {
  type        = number
  description = "Number of CPU cores for the VM cluster"
}

variable "vm_cluster_display_name" {
  type        = string
  description = "Display name for the VM cluster"
}

variable "gi_version" {
  type        = string
  description = "GI version for the VM cluster"
}

variable "hostname_prefix" {
  type        = string
  description = "Hostname prefix for the VM cluster"
}

variable "ssh_public_keys" {
  type        = set(string)
  description = "Set of SSH public keys for the VM cluster"
}

variable "aws_odb_network_resource_id" {
  type        = string
  description = "OBD Network Resource ID"
}

variable "cluster_name" {
  type        = string
  description = "Name for the Grid Infrastructure cluster"
  default     = null
}

variable "is_diagnostics_events_enabled" {
  type        = bool
  description = "Whether diagnostics events is enabled for the VM cluster"
}

variable "is_health_monitoring_enabled" {
  type        = bool
  description = "Whether health monitoring is enabled for the VM cluster"
}

variable "is_incident_logs_enabled" {
  type        = bool
  description = "Whether incident logs is enabled for the VM cluster"
}

variable "data_storage_size_in_tbs" {
  type        = number
  description = "Number of data storage size in tbs for the VM cluster"
  default     = null
}

variable "db_node_storage_size_in_gbs" {
  type        = number
  description = "DB node storage size in gbs for the VM cluster"
  default     = null
}

variable "db_servers" {
  type        = set(string)
  description = "The set of database servers to be used for the VM cluster"
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the VM cluster"
  default     = null
}

variable "is_local_backup_enabled" {
  type        = bool
  description = "Whether local backup is enabled for the VM cluster"
  default     = false
}

variable "is_sparse_disk_group_enabled" {
  type        = bool
  description = "Whether sparse disk group is enabled for the VM cluster"
  default     = false
}

variable "license_model" {
  type        = string
  description = "License model for the VM cluster"
  default     = null
}

variable "memory_size_in_gbs" {
  type        = number
  description = "Memory size in tbs for the VM cluster"
  default     = null
}

variable "time_zone" {
  type        = string
  description = "The time zone to use for the VM cluster"
  default     = null
}

variable "scan_listener_port_tls" {
  type        = number
  description = "The SCAN listener port for TLS (TCP) protocol"
  default     = null
}