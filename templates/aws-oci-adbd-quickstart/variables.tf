variable "aws_region" {
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

variable "infra_maintenance_window_preference" {
  type        = string
  description = "Maintenance window preference for the exa infra"
}

#==================================ODB network vars==============================
variable "network_display_name" {
  type        = string
  description = "Display name for the autonomous VM cluster"
}

variable "subnet_main_cidr" {
  type        = string
  description = "Subnet client cidr range"
}
variable "subnet_backup_cidr" {
  type        = string
  description = "Subnet backup cidr range"
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
}

variable "network_zero_etl_access" {
  type        = string
  description = "Network etl access string"
}

variable "network_s3_policy_document" {
  type        = string
  description = "s3 policy document as string"
}

#============================Autonomous VM cluster vars============================
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

variable "vm_display_name" {
  type        = string
  description = "VM display name"
}

variable "db_servers" {
  type        = set(string)
  description = "The set of database servers IDs to be used for VM cluster"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Resource tags for the autonomous VM cluster"
  default     = null
}

variable "license_model" {
  type        = string
  description = "The Oracle license model to apply to the Autonomous VM cluster"
  default     = "pay-per-use/call pricing"
}

variable "maintenance_window_preference" {
  type        = string
  description = "Maintenance window preference for the AVMC"
}
#===============================Create Autonomous DB vars=================================
variable "ad_admin_password" {
  type        = string
  description = "VM display name"
}

variable "ad_db_name" {
  type        = string
  description = "VM display name"
}

variable "ad_compute_count" {
  type        = string
  description = "VM display name"
}

variable "ad_compute_model" {
  type        = string
  description = "VM display name"
  default = "ECPU"
}

variable "ad_data_storage_size_in_tbs" {
  type        = number
  description = "VM display name"
}
/*
variable "ad_db_version" {
  type        = string
  description = "VM display name"
  default     = "19c"
}

variable "ad_db_workload" {
  type        = string
  description = "VM display name"
  default     = "OLTP"
}

variable "ad_display_name" {
  type        = string
  description = "VM display name"
}

variable "ad_whitelisted_ips" {
  type        = set(string)
  description = "VM display name"
}
*/
#===============================Create DB home vars=================================
/*
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
*/

#================================Create autonomous Container Database vars =======================

variable "acd_display_name" {
  type        = string
  description = "The display name of the autonomous Container Database"
}

variable "acd_patch_model" {
  type        = string
  description = "Patch model of the autonomous Container Database"
  default = "RELEASE_UPDATES" #Possible values: RELEASE_UPDATES, RELEASE_UPDATE_REVISIONS
}

#================================Exadata cdb pdb vars==============================


# Container database
variable "cdb" {
  type        = map(string)
  default     = null
  description = "New container database information object"
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