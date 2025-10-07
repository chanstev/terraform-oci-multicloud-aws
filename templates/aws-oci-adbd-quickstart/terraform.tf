terraform {
  required_version = ">= 1.0"
  required_providers {
    # https://registry.terraform.io/providers/hashicorp/aws/latest/docs
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.15.0"
    }
    # https://registry.terraform.io/providers/oracle/oci/latest/docs
    oci = {
      source  = "oracle/oci"
    }
    # https://registry.terraform.io/providers/hashicorp/local/latest/docs
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.1"
    }
  }
}
