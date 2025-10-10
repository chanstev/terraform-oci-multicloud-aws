# aws-odb-avmc
This module provision Exadata Infrastructure for Oracle Database@AWS

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
| [aws_odb_cloud_exadata_infrastructure.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/odb_cloud_exadata_infrastructure) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_odb_exa_infra_availability_zone_id"></a> [aws\_odb\_exa\_infra\_availability\_zone\_id](#input\_aws\_odb\_exa\_infra\_availability\_zone\_id) | The Id of the Availability Zone where the Exadata infrastructure is located | `string` | n/a | yes |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count) | The compute count of the Exadata infrastructure, default is 2 | `number` | `2` | no |
| <a name="input_customer_contacts_to_send_to_oci"></a> [customer\_contacts\_to\_send\_to\_oci](#input\_customer\_contacts\_to\_send\_to\_oci) | The email addresses used by Oracle to send notifications regarding the Exadata infrastructure | <pre>set(object({<br/>    email = string<br/>  }))</pre> | `null` | no |
| <a name="input_exa_infra_display_name"></a> [exa\_infra\_display\_name](#input\_exa\_infra\_display\_name) | Name of the Exadata infrastructure. | `string` | n/a | yes |
| <a name="input_exa_infra_shape"></a> [exa\_infra\_shape](#input\_exa\_infra\_shape) | The shape model name of the Exadata infrastructure, default is Exadata.X11M | `string` | `"Exadata.X11M"` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Maintenance window configuration for the Exadata Infrastructure | <pre>object({<br/>    patching_mode                    = string<br/>    preference                       = string<br/>    is_custom_action_timeout_enabled = bool<br/>    custom_action_timeout_in_mins    = number<br/>    days_of_week = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    hours_of_day       = optional(set(number))<br/>    lead_time_in_weeks = optional(number)<br/>    months = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    weeks_of_month = optional(set(number))<br/>  })</pre> | <pre>{<br/>  "custom_action_timeout_in_mins": 15,<br/>  "is_custom_action_timeout_enabled": false,<br/>  "patching_mode": "ROLLING",<br/>  "preference": "NO_PREFERENCE"<br/>}</pre> | no |
| <a name="input_storage_count"></a> [storage\_count](#input\_storage\_count) | The storage count of the Exadata infrastructure, default is 3 | `number` | `3` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags for the Exadata Infrastructure | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#output\_oci\_compartment\_ocid) | OCI compartment OCID of the Exadata Infrastructure |
| <a name="output_oci_region"></a> [oci\_region](#output\_oci\_region) | OCI region of theExadata Infrastructure |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | OCID of the Exadata Infrastructure in OCI |
| <a name="output_oci_tenant"></a> [oci\_tenant](#output\_oci\_tenant) | OCI tenant of the Exadata Infrastructure |
| <a name="output_oci_url"></a> [oci\_url](#output\_oci\_url) | OCI Console URL of the Exadata Infrastructure |
| <a name="output_resource"></a> [resource](#output\_resource) | AWS resource object of the Exadata Infrastructure |
| <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id) | Exadata Infrastructure ID in AWS |
<!-- END_TF_DOCS -->