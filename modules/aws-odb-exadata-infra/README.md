# aws-odb-avmc
This module provision Exadata Infrastructure for Oracle Database@AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.15.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                          | Type     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_odb_cloud_exadata_infrastructure.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/aws_odb_cloud_exadata_infrastructure) | resource |

## Inputs

| Name                                                                                                                                                                                                    | Description                                                                                   | Type          | Default | Required |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_exa_infra_display_name"></a> [exa\_infra\_display\_name](#input\_exa\_infra\_display\_name)                                                                                              | Name of the exa infra. Use Ofake to create ofake resource else real exa will be provisioned.  | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_exa_infra_availability_zone_id"></a> [aws\_odb\_exa\_infra\_availability\_zone\_id](#input\_aws\_odb\_exa\_infra\_availability\_zone\_id)                                        | The Id of the Availability Zone where the Exadata infrastructure is located                   | `string`      | n/a     |   yes    |
| <a name="input_exa_infra_shape"></a> [exa\_infra\_shape](#input\_exa\_infra\_shape)                                                                                                                     | The shape model name of the Exadata infrastructure                                            | `string`      | n/a     |   yes    |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count)                                                                                                                             | The compute count of the Exadata infrastructure                                               | `number`      | `null`  |    no    |
| <a name="input_storage_count"></a> [storage\_count](#input\_storage\_count)                                                                                                                             | The storage count of the Exadata infrastructure                                               | `number`      | `null`  |    no    |
| <a name="input_customer_contacts_to_send_to_oci"></a> [customer\_contacts\_to\_send\_to\_oci](#input\_customer\_contacts\_to\_send\_to\_oci)                                                            | The email addresses used by Oracle to send notifications regarding the Exadata infrastructure | `set(object)` | `null`  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                                                                          | Resource tags for the Exadata Infrastructure                                                  | `map(string)` | `null`  |    no    |
| <a name="input_maintenance_window_custom_action_timeout_in_mins"></a> [maintenance\_window\_custom\_action\_timeout\_in\_mins](#input\_maintenance\_window\_custom\_action\_timeout\_in\_mins)          | Maintenance window Custom action timeout in mins                                              | `number`      | n/a     |   yes    |
| <a name="input_maintenance_window_days_of_week"></a> [maintenance\_window\_days\_of\_week](#input\_maintenance\_window\_days\_of\_week)                                                                 | Maintenance window days of week                                                               | `set(object)` | `null`  |    no    |
| <a name="input_maintenance_window_hours_of_day"></a> [maintenance\_window\_hours\_of\_day](#input\_maintenance\_window\_hours\_of\_day)                                                                 | Maintenance window hours of day                                                               | `set(number)` | `null`  |    no    |
| <a name="input_maintenance_window_is_custom_action_timeout_enabled"></a> [maintenance\_window\_is\_custom\_action\_timeout\_enabled](#input\_maintenance\_window\_is\_custom\_action\_timeout\_enabled) | Whether custom action timeout is enabled for the maintenance window                           | `bool`        | n/a     |   yes    |
| <a name="input_maintenance_window_lead_time_in_weeks"></a> [maintenance\_window\_lead\_time\_in\_weeks](#input\_maintenance\_window\_lead\_time\_in\_weeks)                                             | Maintenance window lead time in weeks                                                         | `number`      | `null`  |    no    |
| <a name="input_maintenance_window_months"></a> [maintenance\_window\_months](#input\_maintenance\_window\_months)                                                                                       | Maintenance window months                                                                     | `set(object)` | `null`  |    no    |
| <a name="input_maintenance_window_patching_mode"></a> [maintenance\_window\_patching\_mode](#input\_maintenance\_window\_patching\_mode)                                                                | Maintenance window patching mode                                                              | `string`      | n/a     |   yes    |
| <a name="input_maintenance_window_preference"></a> [maintenance\_window\_preference](#input\_maintenance\_window\_preference)                                                                           | Maintenance window preference                                                                 | `string`      | n/a     |   yes    |
| <a name="input_maintenance_window_weeks_of_month"></a> [maintenance\_window\_weeks\_of\_month](#input\_maintenance\_window\_weeks\_of\_month)                                                           | Maintenance window weeks of month                                                             | `set(number)` | `null`  |    no    |

## Outputs

| Name                                                                                                              | Description                                    |
|-------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| <a name="output_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#output\_aws\_odb\_exa\_resource\_id) | Exadata Infrastructure ID in AWS               |
| <a name="output_exa_resource_ocid"></a> [exa\_resource\_ocid](#output\_exa\_resource\_ocid)                       | Exadata Infrastructure OCID                    |
| <a name="output_aws_odb_exa_resource"></a> [aws\_odb\_exa\_resource](#output\_aws\_odb\_exa\_resource)            | Exadata Infrastructure resource                |
| <a name="output_oci_region"></a> [oci\_region](#output\_oci\_region)                                              | Exadata Infrastructure region in OCI           |
| <a name="output_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#output\_oci\_compartment\_ocid)              | Exadata Infrastructure compartment OCID in OCI |
<!-- END_TF_DOCS -->