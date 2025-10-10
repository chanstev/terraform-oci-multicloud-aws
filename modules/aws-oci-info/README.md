# aws-oci-info
This module extract OCI identifiers (such as region, tenancy and OCIDs) that assocate with the given Oracle Database@AWS resource.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_odb_cloud_autonomous_vm_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/odb_cloud_autonomous_vm_cluster) | data source |
| [aws_odb_cloud_exadata_infrastructure.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/odb_cloud_exadata_infrastructure) | data source |
| [aws_odb_cloud_vm_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/odb_cloud_vm_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_resource_id"></a> [aws\_resource\_id](#input\_aws\_resource\_id) | The ID of the Oracle Database resources in AWS, supporting Exadata Infrastructure, Exadata VM Cluster, Autonomous VM Cluster (e.g. exa\_xxxxxxxxxx, vmc\_xxxxxxxxxx, avmc\_xxxxxxxxxx) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#output\_oci\_compartment\_ocid) | OCI compartment OCID of the Oracle Database@AWS resource |
| <a name="output_oci_region"></a> [oci\_region](#output\_oci\_region) | OCI region of the resource |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | The OCID of the Oracle Database@AWS resource |
| <a name="output_oci_tenant"></a> [oci\_tenant](#output\_oci\_tenant) | OCI tenant of the Oracle Database@AWS resource |
<!-- END_TF_DOCS -->