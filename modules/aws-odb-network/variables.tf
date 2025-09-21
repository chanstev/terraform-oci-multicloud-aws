variable "aws_odb_network_availability_zone_id" {
  description = "Availability Zone ID of the ODB network"
  type        = string
}

variable "aws_odb_network_display_name" {
  description = "Name of the ODB network"
  type        = string
}

variable "aws_odb_network_client_subnet_cidr" {
  description = "Client subnet CIDR range of the ODB network"
  type        = string
}

variable "aws_odb_network_backup_subnet_cidr" {
  description = "Backup subnet CIDR range of the ODB network"
  type        = string
  default     = null
}

variable "aws_odb_network_custom_domain_name" {
  description = "AWS ODB network custom domain name. You can provide this value or aws_odb_network_default_dns_prefix value"
  type        = string
  default     = null
}

variable "aws_odb_network_default_dns_prefix" {
  description = "AWS ODB network default DNS prefix. You can provide this value or aws_odb_network_custom_domain_name value"
  type        = string
  default     = null
}

variable "aws_odb_network_s3_access" {
  description = "The configuration for Amazon S3 access from the ODB network"
  type        = string
}

variable "aws_odb_network_zero_etl_access" {
  description = "The configuration for Zero-ETL access from the ODB network"
  type        = string
}

variable "tags" {
  description = "Resource tags for the Exadata Infrastructure"
  type        = map(string)
  default     = null
}