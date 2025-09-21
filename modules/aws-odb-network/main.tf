# Create the ODB Network
resource "aws_odb_network" "this" {
  availability_zone_id        = var.aws_odb_network_availability_zone_id
  display_name                = var.aws_odb_network_display_name
  client_subnet_cidr          = var.aws_odb_network_client_subnet_cidr
  backup_subnet_cidr          = var.aws_odb_network_backup_subnet_cidr
  custom_domain_name          = var.aws_odb_network_custom_domain_name
  default_dns_prefix          = var.aws_odb_network_default_dns_prefix
  s3_access                   = var.aws_odb_network_s3_access
  zero_etl_access             = var.aws_odb_network_zero_etl_access
  tags                        = var.tags
}