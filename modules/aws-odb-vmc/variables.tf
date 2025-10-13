variable "aws_odb_exa_resource_id" {
  type        = string
  description = "OBD Exadata Infrastructure Resource ID"
}

variable "vm_cluster_name" {
  type        = string
  description = "The name of the Exadata VM Cluster (required)"
}

variable "gi_cluster_name" {
  type        = string
  description = "The name of the Grid Infrastructure (GI) Cluster (optional)"
  default     = null
}

variable "time_zone" {
  type        = string
  description = "The time zone of the Exadata VM cluster (optional), default: UTC"
  default     = "UTC"
}

variable "license_model" {
  type        = string
  description = "The Oracle license model to apply to the Exadata VM cluster (optional), BRING_YOUR_OWN_LICENSE (default) or BRING_YOUR_OWN_LICENSE"
  default     = "BRING_YOUR_OWN_LICENSE"
}

variable "gi_version" {
  type        = string
  description = "The major version of Grid Infrastructure (GI) to install (optional), default 23.0.0.0."
  default     = "23.0.0.0"
}

variable "db_servers" {
  type        = set(string)
  description = "List of DB server IDs (optional), default: null (means all DB servers in the Exadata Infrastructure will be used)"
  default     = null
}

variable "cpu_core_count_per_vm" {
  type        = number
  description = "The number of CPU cores to enable per VM for the Exadata VM cluster (optional). Minimum 8 for X11M, default 8"
  default     = 8
}

variable "memory_size_in_gbs_per_vm" {
  type        = number
  description = "The size of memory in GBs to enable per VM for the Exadata VM cluster (optional). Minimum: 30 per VM, default: 30"
  default     = 30
}

variable "db_node_storage_size_in_gbs_per_vm" {
  type        = number
  description = "The size of the database node storage in GBs to enable per VM for the Exadata VM cluster (optional). Minimum: 60 per VM, default: 60"
  default     = 60
}

variable "data_storage_size_in_tbs" {
  type        = number
  description = "The total size of the data storage in TBs to enable for the Exadata VM cluster (optional), default: 2"
  default     = 2
}

variable "is_local_backup_enabled" {
  type        = bool
  description = "Specifies whether local database backup is enabled for the Exadata VM cluster (optional), default: false"
  default     = false
}

variable "is_sparse_diskgroup_enabled" {
  type        = bool
  description = "Specifies whether sparse disk groups are enabled for the Exadata VM cluster (optional), default: false"
  default     = false
}

variable "aws_odb_network_resource_id" {
  type        = string
  description = "OBD Network Resource ID (required)"
}

variable "hostname_prefix" {
  type        = string
  description = "The hostname prefix to use for the Exadata VM cluster (required). The host name must not exceed 12 characters and must start with a letter. Valid characters are A-Z, a-z, 0-9, and hyphen (-)."
}

variable "scan_listener_port_tcp" {
  type        = number
  description = "The SCAN listener port for TCP protocol (optional), default: 1521 (Permissible range 1024 - 8999. Exceptions: 2484, 6100, 6200, 7060, 7070, 7085, 7879)"
  default     = 1521
}

variable "ssh_public_keys" {
  type        = set(string)
  description = "List of the public key for each SSH key pair that you want to use to access your VM cluster."
}

variable "is_diagnostics_events_enabled" {
  type        = bool
  description = "Allow Oracle to collect and send fault notifications about critical, warning, and information events to you.(optional), default: true"
  default     = true
}

variable "is_health_monitoring_enabled" {
  type        = bool
  description = "Allow Oracle to collect health metrics/events such as Oracle Database up/down, disk space usage, etc., and share them with Oracle Cloud operations. You might receive some event notifications. (optional), default: true"
  default     = true
}

variable "is_incident_logs_enabled" {
  type        = bool
  description = "Allow Oracle to collect incident logs and traces to enable fault diagnosis and issue resolution. (optional), default: true"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the VM cluster in AWS (optional)"
  default     = null
}
