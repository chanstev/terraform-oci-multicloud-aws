# aws-odb-avmc
This module provision Exadata Infrastructure @ AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                          | Type     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_odb_cloud_exadata_infrastructure.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/aws_odb_cloud_exadata_infrastructure) | resource |

## Inputs

| Name                                                                                                                                                             | Description                                                                                   | Type          | Default | Required |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_exa_infra_display_name"></a> [exa\_infra\_display\_name](#input\_exa\_infra\_display\_name)                                                       | Name of the exa infra. Use Ofake to create ofake resource else real exa will be provisioned.  | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_exa_infra_availability_zone_id"></a> [aws\_odb\_exa\_infra\_availability\_zone\_id](#input\_aws\_odb\_exa\_infra\_availability\_zone\_id) | The Id of the Availability Zone where the Exadata infrastructure is located                   | `string`      | n/a     |   yes    |
| <a name="input_exa_infra_shape"></a> [exa\_infra\_shape](#input\_exa\_infra\_shape)                                                                              | The shape model name of the Exadata infrastructure                                            | `string`      | n/a     |   yes    |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count)                                                                                      | The compute count of the Exadata infrastructure                                               | `number`      | `null`  |    no    |
| <a name="input_storage_count"></a> [storage\_count](#input\_storage\_count)                                                                                      | The storage count of the Exadata infrastructure                                               | `number`      | `null`  |    no    |
| <a name="input_customer_contacts_to_send_to_oci"></a> [customer\_contacts\_to\_send\_to\_oci](#input\_customer\_contacts\_to\_send\_to\_oci)                     | The email addresses used by Oracle to send notifications regarding the Exadata infrastructure | `set(string)` | `null`  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                                   | Resource tags for the Exadata Infrastructure                                                  | `map(string)` | `null`  |    no    |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window)                                                                       | The maintenance window configuration for the Exadata infrastructure                           | `object`      | n/a     |   yes    |

## Outputs

| Name                                                                                                              | Description                                    |
|-------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| <a name="output_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#output\_aws\_odb\_exa\_resource\_id) | Exadata Infrastructure ID in AWS               |
| <a name="output_exa_resource_ocid"></a> [exa\_resource\_ocid](#output\_exa\_resource\_ocid)                       | Exadata Infrastructure OCID                    |
| <a name="output_aws_odb_exa_resource"></a> [aws\_odb\_exa\_resource](#output\_aws\_odb\_exa\_resource)            | Exadata Infrastructure resource                |
| <a name="output_oci_region"></a> [oci\_region](#output\_oci\_region)                                              | Exadata Infrastructure region in OCI           |
| <a name="output_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#output\_oci\_compartment\_ocid)              | Exadata Infrastructure compartment OCID in OCI |
<!-- END_TF_DOCS -->