locals {
  resource_type = regex("^(exa|vmc|avmc)_", var.aws_resource_id)[0]
  patterns = {
    "exa"  = "cloudexadatainfrastructures"
    "vmc"  = "cloudvmclusters"
    "avmc" = "aevm"
  }

  oci_url = one( concat(
    data.aws_odb_cloud_exadata_infrastructure.this[0].oci_url,
    data.aws_odb_cloud_vm_cluster.this[0].oci_url,
    data.aws_odb_cloud_autonomous_vm_cluster.this[0].oci_url,
  ) )
  
  oci_region           = regex("(?i:region=)([^?&/]+)", local.oci_url)[0]
  oci_compartment_ocid = regex("(?i:compartmentId=)([^?&/]+)", local.oci_url)[0]
  oci_tenant           = regex("(?i:tenant=)([^?&/]+)", local.oci_url)[0]
  oci_resource_ocid    = regex("(?i:${local.patterns[local.resource_type]}/)([^?&/]+)", local.oci_url)[0]

}

data "aws_odb_cloud_exadata_infrastructure" "this" {
  count = local.resource_type == "exa" ? 1 : 0
  id    = var.aws_resource_id
}

data "aws_odb_cloud_vm_cluster" "this" {
  count = local.resource_type == "vmc" ? 1 : 0
  id    = var.aws_resource_id
}

data "aws_odb_cloud_autonomous_vm_cluster" "this" {
  count = local.resource_type == "avmc" ? 1 : 0
  id    = var.aws_resource_id
}
