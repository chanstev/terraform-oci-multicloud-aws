# Define the Terraform Provider requirements

# hashicorp/aws 6.15.0+ is needed for Oracle Database@AWS resources
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 6.15.0" }
  }
}
