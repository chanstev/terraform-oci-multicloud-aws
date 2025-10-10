# Define the Terraform Provider requirements

# oracle/oci is needed for Oracle Database resources
terraform {
  required_providers {
    oci = { source = "oracle/oci", version = ">= 7.0.0" }
  }
}
