output "oci_region" {
 description = "OCI region of the resource"
  value = local.oci_region
}

output "oci_compartment_ocid" {
    description = "OCI compartment OCID of the Oracle Database@AWS resource"
  value = local.oci_compartment_ocid
}

output "oci_tenant" {
    description = "OCI tenant of the Oracle Database@AWS resource"
  value = local.oci_tenant
}

output "oci_resource_ocid" {
    description = "The OCID of the Oracle Database@AWS resource"
  value = local.oci_resource_ocid
}