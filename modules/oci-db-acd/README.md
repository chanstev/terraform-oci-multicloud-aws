# oci-db-acd
This module provision ACD @ OCI

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_database_autonomous_container_database.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/database_autonomous_container_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acd_display_name"></a> [acd\_display\_name](#input\_acd\_display\_name) | The display name of the database | `string` | n/a | yes |
| <a name="input_acd_patch_model"></a> [acd\_patch\_model](#input\_acd\_patch\_model) | The patch model of the database | `string` | n/a | yes |
| <a name="input_autonomous_vm_cluster_id"></a> [autonomous\_vm\_cluster\_id](#input\_autonomous\_vm\_cluster\_id) | The OCID of the AVMC used | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | The OCID of the Autonomous Container Database |
<!-- END_TF_DOCS -->