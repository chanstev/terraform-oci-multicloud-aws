# https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration
provider "aws" {
  region              = var.aws_region
  shared_config_files = var.aws_shared_config_files
  profile             = var.aws_profile
  access_key          = var.aws_access_key
  secret_key          = var.aws_secret_key
}

# https://docs.oracle.com/en-us/iaas/Content/dev/terraform/configuring.htm#authentication
provider "oci" {
  auth                 = var.oci_auth
  config_file_profile  = var.oci_config_file_profile
  region               = local.oci_region
  tenancy_ocid         = var.oci_tenancy_ocid
  user_ocid            = var.oci_user_ocid
  fingerprint          = var.oci_fingerprint
  private_key_path     = var.oci_private_key_path
  private_key_password = var.oci_private_key_password
}

