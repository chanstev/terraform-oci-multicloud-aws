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
# ==================================Autonomous VM Cluster vars==========================   
variable "avmc_name" {
  type        = string
  description = "Display name for the autonomous VM cluster"
}

variable "avmc_autonomous_data_storage_size_in_tbs" {
  type        = number
  description = "Autonomous data storage size in TBs"
  default     = 5
}
variable "avmc_memory_per_oracle_compute_unit_in_gbs" {
  type        = number
  description = "Memory per Oracle compute unit in GBs"
  default     = 2
}
variable "avmc_total_container_databases" {
  type        = number
  description = "Total number of container databases"
  default     = 1
}
variable "avmc_cpu_core_count_per_node" {
  type        = number
  description = "CPU core count per node"
  default     = 16
}
variable "avmc_db_servers" {
  type        = set(string)
  description = "List of DB server IDs"
  default     = null
}
variable "avmc_license_model" {
  type        = string
  description = "License model for the autonomous VM cluster (LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE)"
  default     = "BRING_YOUR_OWN_LICENSE"
}
variable "avmc_is_mtls_enabled_vm_cluster" {
  type        = bool
  description = "Is mTLS enabled for the Autonomous VM cluster"
  default     = false
}
variable "avmc_scan_listener_port_non_tls" {
  type        = number
  description = "SCAN listener port for non-TLS (TCP) protocol"
  default     = 1521
}
variable "avmc_scan_listener_port_tls" {
  type        = number
  description = "SCAN listener port for TLS (TCP) protocol"
  default     = 2484
}
variable "avmc_maintenance_window" {
  description = "Maintenance window configuration for the Autonomous VM cluster"
  type = object({
    preference = string
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
    preference = "NO_PREFERENCE"
  }
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
variable "oci_tenancy_ocid" {
  type        = string
  description = "OCID of the OCI tenancy"
  default     = null
}
variable "oci_user_ocid" {
  type        = string
  description = "OCID of the OCI user"
  default     = null
}
variable "oci_private_key_path" {
  type        = string
  description = "The path (including filename) of the private key"
  default     = null
}
variable "oci_private_key_password" {
  type        = string
  description = "Passphrase used for the key, if it's encrypted"
  sensitive   = true
  default     = null
}
variable "oci_fingerprint" {
  type        = string
  description = "Fingerprint for the key pair being used"
  default     = null
}
#==================================Autonomous Container Database vars==========================
variable "acd_display_name" {
  type        = string
  description = "Display name for the Autonomous Container Database"
}

variable "acd_patch_model" {
  type        = string
  description = "The Autonomous Container Database patch model"
  default     = "RELEASE_UPDATES"
}

#==================================Autonomous Database vars==========================
variable "adb_admin_password" {
  type        = string
  description = "Admin password for the Autonomous Database"
  sensitive   = true
}
variable "adb_db_name" {
  type        = string
  description = "Database name for the Autonomous Database"
}
variable "adb_compute_model" {
  type        = string
  description = "Compute model for the Autonomous Database"
  default     = "ECPU"
}
variable "adb_compute_count" {
  type        = number
  description = "Compute count for the Autonomous Database"
  default     = 2
}
variable "adb_data_storage_size_in_tbs" {
  type        = number
  description = "Data storage size in TBs for the Autonomous Database"
  default     = 1
}
