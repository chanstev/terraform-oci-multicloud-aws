variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

# AWS access key
variable "aws_access_key" {
  type        = string
  description = "Aws access key"
  default     = ""
}

# AWS secret key
variable "aws_secret_key" {
  type        = string
  description = "Aws secret key"
  default     = ""

}

variable "tenancy_ocid" {
  description = "OCI Tenancy OCID"
  type        = string
}

variable "user_ocid" {
  description = "OCI User OCID"
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint for OCI API Key"
  type        = string
}

variable "private_key_path" {
  description = "Path to the OCI private API key file"
  type        = string
}

variable "subnet_availability_zone" {
  type        = string
  description = "AWS subnet availability zone"
}

variable "availability_zone" {
  type        = string
  description = "OCI resources availability zone"
}

#==================================AWS VPC vars==============================
variable "vpc_cidr" {
  type        = string
  description = "Vpc CIDR range"
}

variable "vpc_private_subnet_cidr" {
  type        = string
  description = "Vpc private CIDR range"
}

variable "vpc_name" {
  type        = string
  description = "Name of vpc inside AWS"
}

#==================================Exadata infrastructure vars==============================
variable "infra_display_name" {
  type        = string
  description = "OCI infra display name"
}

variable "infra_shape" {
  type        = string
  description = "Infra shape option"
}

variable "storage_count" {
  type        = string
  description = "Infra storage count"
}

variable "compute_count" {
  type        = string
  description = "Infra compute count"
}

variable "maintenance_window" {
  description = "The maintenance window configuration for the Exadata infrastructure"
  type = object({
    custom_action_timeout_in_mins    = number
    days_of_week                     = set(string)
    hours_of_day                     = set(number)
    is_custom_action_timeout_enabled = bool
    lead_time_in_weeks               = number
    months                           = set(string)
    patching_mode                    = string
    preference                       = string
    skip_ru                          = bool
    weeks_of_month                   = set(number)
  })
}

#==================================ODB network vars==============================
variable "network_display_name" {
  type        = string
  description = "Display name for the autonomous VM cluster"
}

variable "subnet_main_cidr" {
  type        = string
  description = "Subnet backup bcidr range"
}
variable "subnet_backup_cidr" {
  type        = string
  description = "Subnet backup bcidr range"
}

variable "default_dns_prefix" {
  type        = string
  description = "Subnet default dns prefix"
}

variable "network_tags" {
  type        = map(string)
  description = "OCI network meta tags"
}

variable "network_s3_access" {
  type        = string
  description = "S3 access permission string"
  default = null
}

variable "network_zero_etl_access" {
  type        = string
  description = "Network etl access string"
  default = null
}

variable "network_s3_policy_document" {
  type        = string
  description = "s3 policy document as string"
  default = null
}

variable "s3_access" {
  type        = string
  description = "S3 access permission string"
  default = null
}

#============================VM cluster vars============================
variable "vm_cpu_core_count" {
  type        = number
  description = "Number of cpur cores to be assigned to VM cluster"
}

variable "gi_version" {
  type        = string
  description = "OCI VM gi version"
}

variable "vm_display_name" {
  type        = string
  description = "VM display name"
}

variable "hostname_prefix" {
  type        = string
  description = "VM host name prefix to be assigned"
}

variable "vm_ssh_public_keys" {
  type        = list(string)
  description = "VM ssh public key to be attached"
  default     = []
}

variable "is_vm_local_backup_enabled" {
  type        = bool
  description = "Whether local backup enabled for VM"
  default     = false
}

variable "is_sparse_disk_group_enabled" {
  type        = bool
  description = "Whether sparse disk group enabled to storage"
  default     = false
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
  default     = "pay-per-use/call pricing"
}

variable "is_mtls_enabled_vm_cluster" {
  type        = bool
  description = "Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster"
  default     = false
}

variable "scan_listener_port_non_tls" {
  type        = number
  description = "The SCAN listener port for non-TLS (TCP) protocol"
  default     = null
}

variable "scan_listener_port_tls" {
  type        = number
  description = "The SCAN listener port for TLS (TCP) protocol"
  default     = null
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
variable "memory_size_in_gbs" {
  type        = number
  description = "Memory size in gbs for the VM cluster"
  default     = null
}

#===============================Create DB home vars=================================
variable "db_home_source" {
  type        = string
  description = "DB home source type"
  default     = "VM_CLUSTER_NEW"
}

variable "db_version" {
  type        = string
  description = "DB version"
  default     = "19.0.0.0"
}

variable "db_home_display_name" {
  type        = string
  description = "DB home display name"
  default     = "my_db_home"
}

#================================Exadata cdb pdb vars==============================


# Container database
variable "cdb" {
  type        = map(string)
  default     = null
  description = "New container database information object"
}

variable "auto_backup" {
  type        = bool
  default   = false
  description = "To handle backup flag"
}

# Pluggable database map
variable "pdbs" {
  description = "A map encapsulating PDB(s) database details"
  type = map(object({
    pdb_name = string
    pdb_admin_password = string
    pdb_wallet_password = string
  }))
}