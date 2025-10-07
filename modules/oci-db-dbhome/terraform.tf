# Define the Terraform Provider requirements

# oracle/oci is needed for Oracle Cloud Infrastructure resources
terraform {
  required_providers {
    oci = { source = "oracle/oci" }
  }
}
