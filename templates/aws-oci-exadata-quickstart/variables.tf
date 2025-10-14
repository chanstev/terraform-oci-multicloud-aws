#==================================AWS common vars==========================
variable "aws_region" {
  description = "AWS Region, e.g. us-west-2"
  type        = string
}

variable "availability_zone" {
  description = "AWS resources availability zone, e.g. us-west-2c"
  type        = string
}

variable "availability_zone_id" {
  description = "AWS resources availability zone ID, e.g. usw2-az3"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    "provisionedby" = "terraform",
    "usecase"       = "Oracle Database@AWS"
  }
}

#==================================AWS credentials vars======================
variable "aws_profile" {
  type        = string
  description = "Aws profile name"
  default     = "default"
}

variable "aws_shared_config_files" {
  type        = list(string)
  description = "Aws shared config files"
  default     = ["~/.aws/config"]
}

variable "aws_access_key" {
  type        = string
  description = "Aws access key"
  default     = null
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "Aws secret key"
  default     = null
  sensitive   = true
}
#==================================AWS VPC vars==============================
variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR range of VPC"
}

variable "vpc_workload_subnet_cidr" {
  type        = string
  description = "CIDR range of Workload Subnet"
}

#==================================Exadata Infrastructure vars================
variable "exadata_infrastructure_shape" {
  type        = string
  description = "Shape of Exadata Infrastructure"
  default     = "Exadata.X11M"
}

variable "exadata_infrastructure_name" {
  type        = string
  description = "Display name of Exadata Infrastructure"
}

variable "exadata_infrastructure_compute_count" {
  type        = number
  description = "Number of Compute Servers"
  default     = 2
}

variable "exadata_infrastructure_storage_count" {
  type        = number
  description = "Number of Storage Servers"
  default     = 3
}

variable "exadata_infrastructure_maintenance_window" {
  description = "Maintenance window configuration for the Exadata Infrastructure"
  type = object({
    patching_mode                    = string
    preference                       = string
    is_custom_action_timeout_enabled = optional(bool)
    custom_action_timeout_in_mins    = optional(number)
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
    patching_mode                    = "ROLLING"
    preference                       = "NO_PREFERENCE"
    is_custom_action_timeout_enabled = false
    custom_action_timeout_in_mins    = 15
  }
}

variable "exadata_infrastructure_customer_contacts" {
  type        = set(object({ email = string }))
  description = "List of customer contacts to send notifications to OCI"
  default     = null
}

#==================================ODB network vars===========================
variable "odb_network_name" {
  type        = string
  description = "Name of the ODB network"
}

variable "odb_network_client_subnet_cidr" {
  type        = string
  description = "CIDR range of ODB client subnet"
}

variable "odb_network_backup_subnet_cidr" {
  type        = string
  description = "CIDR range of ODB backup subnet (optional)"
  default     = null
}

variable "odb_network_default_dns_prefix" {
  type        = string
  description = "Default DNS prefix for the ODB network (optional)"
  default     = null
}

variable "odb_network_s3_access" {
  type        = string
  description = "S3 access for the ODB network (ENABLED or DISABLED)"
  default     = "DISABLED"
}

variable "odb_network_zero_etl_access" {
  type        = string
  description = "Zero ETL access for the ODB network (ENABLED or DISABLED)"
  default     = "DISABLED"
}

variable "odb_network_s3_policy_document" {
  type        = string
  description = "S3 policy document as string (optional)"
  default     = null
}
#==================================ODB peering vars===========================
variable "odb_peering_connection_display_name" {
  type        = string
  description = "Display name for the ODB peering connection (optional)"
  default     = null
}
variable "odb_peering_connection_peer_network_id" {
  type        = string
  description = "ID of VPC of Peer Network"
  default     = null
}

# ==================================VM Cluster vars==========================
variable "vmc_vm_cluster_name" {
  type        = string
  description = "The name of the Exadata VM Cluster (required)"
}

variable "vmc_gi_cluster_name" {
  type        = string
  description = "The name of the Grid Infrastructure (GI) Cluster (optional)"
  default = null
}

variable "vmc_time_zone" {
  type = string
  description = "The time zone of the Exadata VM cluster (optional), default: UTC"
  default = "UTC"
}

variable "vmc_license_model" {
  type = string
  description = "The Oracle license model to apply to the Exadata VM cluster (optional), BRING_YOUR_OWN_LICENSE (default) or BRING_YOUR_OWN_LICENSE"
  default     = "BRING_YOUR_OWN_LICENSE"
}

variable "vmc_gi_version" {
  type        = string
  description = "The major version of Grid Infrastructure (GI) to install (optional), default 23.0.0.0."
  default     = "23.0.0.0"  
}

variable "vmc_db_servers" {
    type        = set(string)
    description = "List of DB server IDs (optional), default: null means all DB servers in the Exadata Infrastructure will be used"
    default     = null 
}

variable "vmc_cpu_core_count_per_vm" {
  type        = number
  description = "The number of CPU cores to enable per VM for the Exadata VM cluster (optional). Minimum 8 for X11M, default 8"
  default = 8
}

variable "vmc_memory_size_in_gbs_per_vm" {
  type        = number
  description = "The size of memory in GBs to enable per VM for the Exadata VM cluster (optional). Minimum: 30 per VM, default: 30"
  default     = 30
}

variable "vmc_db_node_storage_size_in_gbs_per_vm" {
  type        = number
  description = "The size of the database node storage in GBs to enable per VM for the Exadata VM cluster (optional). Minimum: 60 per VM, default: 60"
  default     = 60
}

variable "vmc_data_storage_size_in_tbs" {
  type        = number
  description = "The size of the data storage in TBs to enable for the Exadata VM cluster (optional), default: 2"
  default     = 2  
}

variable "vmc_is_local_backup_enabled" {
  type        = bool
  description = "Specifies whether local database backup is enabled for the Exadata VM cluster (optional), default: false"
  default     = false
}
variable "vmc_is_sparse_diskgroup_enabled" {
  type        = bool
  description = "Specifies whether sparse disk groups are enabled for the Exadata VM cluster (optional), default: false"
  default     = false
}
variable "vmc_hostname_prefix" {
  type        = string
  description = "The hostname prefix to use for the Exadata VM cluster, default: vmc. The host name must not exceed 12 characters and must start with a letter. Valid characters are A-Z, a-z, 0-9, and hyphen (-)."
  default     = "vmc"
}
variable "vmc_vm_ssh_public_keys_paths" {
  type        = set(string)
  description = "The set of paths of SSH public keys to add to the Exadata VM cluster (required)"
}
variable "vmc_scan_listener_port_tcp" {
  type        = number
  description = "The SCAN listener port for TCP protocol (optional), default: 1521"
  default     = 1521
}
variable "vmc_is_diagnostics_events_enabled" {
  type        = bool
  description = "Specifies whether the Oracle Cloud Infrastructure (OCI) Diagnostics events are enabled for the Exadata VM cluster (optional), default: true"
  default     = true
}
variable "vmc_is_health_monitoring_enabled" {
  type        = bool
  description = "Specifies whether the Health Monitoring service is enabled for the Exadata VM cluster (optional), default: true"
  default     = true
}
variable "vmc_is_incident_logs_enabled" {
  type        = bool
  description = "Specifies whether the Incident Logs service is enabled for the Exadata VM cluster (optional), default: true"
  default     = true
}
#==================================OCI common vars==========================
# OCI Authentication
variable "oci_auth" {
  type        = string
  description = "OCI Authentication method, default: APIKey, InstancePrincipal | ResourcePrincipal | SecurityToken"
  default     = "APIKey"
}
variable "oci_config_file_profile" {
  type        = string
  description = "OCI Config file name"
  default     = "DEFAULT"
}
variable "oci_region" {
  type        = string
  description = "OCI Region, e.g. us-phoenix-1"
  default     = null
}
variable oci_tenancy_ocid {
  type        = string
  description = "OCID of the OCI tenancy"
  default     = null
}
variable oci_user_ocid {
  type        = string
  description = "OCID of the OCI user"
  default     = null
}
variable oci_private_key_path {
  type        = string
  description = "The path (including filename) of the private key"
  default = null
}
variable oci_private_key_password {
  type        = string
  description = "Passphrase used for the key, if it's encrypted"
  sensitive   = true
  default = null
}
variable oci_fingerprint {
  type        = string
  description = "Fingerprint for the key pair being used"
  default = null
}

# ==================================Database Home vars==========================
variable "db_home_source" {
  type = string
  description = "The source of database. VM_CLUSTER_NEW for creating a database for VM Cluster."
  default = "VM_CLUSTER_NEW"
}

variable "db_home_name" {
  type = string
  description = "Name of DB Home"
}

variable "db_home_version" {
  type = string
  description = "The Oracle Database version"
}

# ==================================Container Database vars==========================
variable "cdb_name" {
  type = string
  description = "The display name of the database. (required)"
}

variable "cdb_admin_password" {
  type = string
  sensitive = true
  description = "A strong password for SYS, SYSTEM, PDB Admin and TDE Wallet. (required)"
}

variable "cdb_source" {
  type = string
  default = "NONE"
  description = "The source of the database (optional), default NONE."
}

variable "cdb_auto_backup_enabled" {
  type = bool
  default = false
  description = "Enable automatic backup (optional), default false"
}

# ==================================Pluggable Database vars==========================
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
