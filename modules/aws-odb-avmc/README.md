# aws-odb-avmc
This module provision Autonomous VM clusters for Oracle Database@AWS

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
| [aws_odb_cloud_autonomous_vm_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/odb_cloud_autonomous_vm_cluster) | resource |
| [aws_odb_db_servers.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/odb_db_servers) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autonomous_data_storage_size_in_tbs"></a> [autonomous\_data\_storage\_size\_in\_tbs](#input\_autonomous\_data\_storage\_size\_in\_tbs) | Number of autonomous data storage size in tbs for the Autonomous VM cluster | `number` | `5` | no |
| <a name="input_autonomous_vm_cluster_display_name"></a> [autonomous\_vm\_cluster\_display\_name](#input\_autonomous\_vm\_cluster\_display\_name) | Display name for the Autonomous VM cluster | `string` | n/a | yes |
| <a name="input_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#input\_aws\_odb\_exa\_resource\_id) | ODB Exadata Resource ID | `string` | n/a | yes |
| <a name="input_aws_odb_network_resource_id"></a> [aws\_odb\_network\_resource\_id](#input\_aws\_odb\_network\_resource\_id) | ODB Network Resource ID | `string` | n/a | yes |
| <a name="input_cpu_core_count_per_node"></a> [cpu\_core\_count\_per\_node](#input\_cpu\_core\_count\_per\_node) | Number of CPU cores per node for the Autonomous VM cluster | `number` | `40` | no |
| <a name="input_db_servers"></a> [db\_servers](#input\_db\_servers) | The set of database servers IDs to be used for the Autonomous VM cluster | `set(string)` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | A user-provided description of the Autonomous VM cluster | `string` | `null` | no |
| <a name="input_is_mtls_enabled_vm_cluster"></a> [is\_mtls\_enabled\_vm\_cluster](#input\_is\_mtls\_enabled\_vm\_cluster) | Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster | `bool` | `false` | no |
| <a name="input_license_model"></a> [license\_model](#input\_license\_model) | The Oracle license model to apply to the Autonomous VM cluster | `string` | `"BRING_YOUR_OWN_LICENSE"` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Maintenance window configuration for the Autonomous VM cluster | <pre>object({<br/>    preference                       = string<br/>    days_of_week = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    hours_of_day       = optional(set(number))<br/>    lead_time_in_weeks = optional(number)<br/>    months = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    weeks_of_month = optional(set(number))<br/>  })</pre> | <pre>{<br/>  "preference": "NO_PREFERENCE"<br/>}</pre> | no |
| <a name="input_memory_per_oracle_compute_unit_in_gbs"></a> [memory\_per\_oracle\_compute\_unit\_in\_gbs](#input\_memory\_per\_oracle\_compute\_unit\_in\_gbs) | Number of gbs memory per oracle compute unit for the Autonomous VM cluster | `number` | `2` | no |
| <a name="input_scan_listener_port_non_tls"></a> [scan\_listener\_port\_non\_tls](#input\_scan\_listener\_port\_non\_tls) | The SCAN listener port for non-TLS (TCP) protocol | `number` | `1521` | no |
| <a name="input_scan_listener_port_tls"></a> [scan\_listener\_port\_tls](#input\_scan\_listener\_port\_tls) | The SCAN listener port for TLS (TCP) protocol | `number` | `2484` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags for the Autonomous VM cluster | `map(string)` | `null` | no |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | The time zone to use for the Autonomous VM cluster | `string` | `"UTC"` | no |
| <a name="input_total_container_databases"></a> [total\_container\_databases](#input\_total\_container\_databases) | total number of container databases for the Autonomous VM cluster | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#output\_oci\_compartment\_ocid) | OCI compartment OCID of the Autonomous VM Cluster |
| <a name="output_oci_region"></a> [oci\_region](#output\_oci\_region) | OCI region of the Autonomous VM Cluster |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | OCID of the Autonomous VM Cluster in OCI |
| <a name="output_oci_tenant"></a> [oci\_tenant](#output\_oci\_tenant) | OCI tenant of the Autonomous VM Cluster |
| <a name="output_oci_url"></a> [oci\_url](#output\_oci\_url) | OCI Console URL of the Autonomous VM Cluster |
| <a name="output_resource"></a> [resource](#output\_resource) | AWS resource object of the Autonomous VM Cluster |
| <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id) | Autonomous VM Cluster ID in AWS |
<!-- END_TF_DOCS -->