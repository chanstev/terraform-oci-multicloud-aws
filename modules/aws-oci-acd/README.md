# aws-oci-acd
This module provision ACD @ OCI

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                      | Type     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [oci_database_autonomous_container_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oci_database_autonomous_container_database) | resource |

## Inputs

| Name                                                                                                                    | Description                      | Type     | Default | Required |
|-------------------------------------------------------------------------------------------------------------------------|----------------------------------|----------|---------|:--------:|
| <a name="input_autonomous_vm_cluster_id"></a> [cloud\_autonomous\_vm\_cluster\_id](#input\_autonomous\_vm\_cluster\_id) | The OCID of the AVMC used        | `string` | n/a     |   yes    |
| <a name="input_acd_display_name"></a> [acd\_display\_name](#input\_acd\_display\_name)                                  | The display name of the database | `string` | n/a     |   yes    |
| <a name="input_acd_patch_model"></a> [acd\_patch\_model](#input\_acd\_patch\_model)                                     | The patch model of the database  | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                           | Description                                                                  |
|------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|
| <a name="output_acd_id"></a> [acd\_id](#output\_acd\_id)                                       | The OCID of the created ACD                                                  |
<!-- END_TF_DOCS -->