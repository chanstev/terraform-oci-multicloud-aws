# aws-odb-avmc
This module provision Autonomous VM clusters for Oracle Database@AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.15.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                    | Type     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_odb_cloud_autonomous_vm_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/odb_cloud_autonomous_vm_cluster) | resource |

## Inputs

| Name                                                                                                                                                          | Description                                                                                | Type          | Default | Required |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_autonomous_data_storage_size_in_tbs"></a> [autonomous\_data\_storage\_size\_in\_tbs](#input\_autonomous\_data\_storage\_size\_in\_tbs)         | Number of autonomous data storage size in tbs for the autonomous VM cluster                | `number`      | n/a     |   yes    |
| <a name="input_autonomous_vm_cluster_display_name"></a> [autonomous\_vm\_cluster\_display\_name](#input\_autonomous\_vm\_cluster\_display\_name)              | Display name for the autonomous VM cluster                                                 | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#input\_aws\_odb\_exa\_resource\_id)                                               | OBD Exadata Resource ID                                                                    | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_resource_id"></a> [aws\_odb\_network\_resource\_id](#input\_aws\_odb\_network\_resource\_id)                                   | OBD Network Resource ID                                                                    | `string`      | n/a     |   yes    |
| <a name="input_cpu_core_count_per_node"></a> [cpu\_core\_count\_per\_node](#input\_cpu\_core\_count\_per\_node)                                               | Number of CPU cores per node for the autonomous VM cluster                                 | `number`      | n/a     |   yes    |
| <a name="input_db_servers"></a> [db\_servers](#input\_db\_servers)                                                                                            | The set of database servers IDs to be used for the Autonomous VM cluster                   | `set(string)` | `null`  |    no    |
| <a name="input_description"></a> [description](#input\_description)                                                                                           | A user-provided description of the Autonomous VM cluster                                   | `string`      | `null`  |    no    |
| <a name="input_is_mtls_enabled_vm_cluster"></a> [is\_mtls\_enabled\_vm\_cluster](#input\_is\_mtls\_enabled\_vm\_cluster)                                      | Specifies whether to enable mutual TLS (mTLS) authentication for the Autonomous VM cluster | `bool`        | `false` |    no    |
| <a name="input_license_model"></a> [license\_model](#input\_license\_model)                                                                                   | The Oracle license model to apply to the Autonomous VM cluster                             | `string`      | `null`  |    no    |
| <a name="input_memory_per_oracle_compute_unit_in_gbs"></a> [memory\_per\_oracle\_compute\_unit\_in\_gbs](#input\_memory\_per\_oracle\_compute\_unit\_in\_gbs) | Number of gbs memory per oracle compute unit for the autonomous VM cluster                 | `number`      | n/a     |   yes    |
| <a name="input_scan_listener_port_non_tls"></a> [scan\_listener\_port\_non\_tls](#input\_scan\_listener\_port\_non\_tls)                                      | The SCAN listener port for non-TLS (TCP) protocol                                          | `number`      | n/a     |   yes    |
| <a name="input_scan_listener_port_tls"></a> [scan\_listener\_port\_tls](#input\_scan\_listener\_port\_tls)                                                    | The SCAN listener port for TLS (TCP) protocol                                              | `number`      | n/a     |   yes    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                                | Resource tags for the autonomous VM cluster                                                | `map(string)` | `null`  |    no    |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone)                                                                                               | The time zone to use for the Autonomous VM cluster                                         | `string`      | `null`  |    no    |
| <a name="input_total_container_databases"></a> [total\_container\_databases](#input\_total\_container\_databases)                                             | total number of container databases for the autonomous VM cluster                          | `number`      | n/a     |   yes    |
| <a name="input_maintenance_window_days_of_week"></a> [maintenance\_window\_days\_of\_week](#input\_maintenance\_window\_days\_of\_week)                       | Maintenance window days of week                                                            | `set(object)` | `null`  |    no    |
| <a name="input_maintenance_window_hours_of_day"></a> [maintenance\_window\_hours\_of\_day](#input\_maintenance\_window\_hours\_of\_day)                       | Maintenance window hours of day                                                            | `set(number)` | `null`  |    no    |
| <a name="input_maintenance_window_lead_time_in_weeks"></a> [maintenance\_window\_lead\_time\_in\_weeks](#input\_maintenance\_window\_lead\_time\_in\_weeks)   | Maintenance window lead time in weeks                                                      | `number`      | `null`  |    no    |
| <a name="input_maintenance_window_months"></a> [maintenance\_window\_months](#input\_maintenance\_window\_months)                                             | Maintenance window months                                                                  | `set(object)` | `null`  |    no    |
| <a name="input_maintenance_window_preference"></a> [maintenance\_window\_preference](#input\_maintenance\_window\_preference)                                 | Maintenance window preference                                                              | `string`      | n/a     |   yes    |
| <a name="input_maintenance_window_weeks_of_month"></a> [maintenance\_window\_weeks\_of\_month](#input\_maintenance\_window\_weeks\_of\_month)                 | Maintenance window weeks of month                                                          | `set(number)` | `null`  |    no    |

## Outputs

| Name                                                                                                                                         | Description                         |
|----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
| <a name="output_avm_cluster_arn"></a> [avm\_cluster\_arn](#output\_avm\_cluster\_arn)                                                        | AVM Cluster ARN                     |
| <a name="output_avm_cluster_display_name"></a> [avm\_cluster\_display\_name](#output\_avm\_cluster\_display\_name)                           | AVM Cluster Display Name            |
| <a name="output_avm_cluster_id"></a> [avm\_cluster\_id](#output\_avm\_cluster\_id)                                                           | AVM Cluster ID                      |
| <a name="output_avm_cluster_hostname"></a> [avm\_cluster\_hostname](#output\_avm\_cluster\_hostname)                                         | AVM Cluster Hostname                |
| <a name="output_avm_cluster_oci_url"></a> [avm\_cluster\_oci\_url](#output\_avm\_cluster\_oci\_url)                                          | AVM Cluster OCI URL                 |
| <a name="output_avm_cluster_ocid"></a> [avm\_cluster\_ocid](#output\_avm\_cluster\_ocid)                                                     | AVM Cluster OCID                    |
| <a name="output_avm_cluster_status"></a> [avm\_cluster\_status](#output\_avm\_cluster\_status)                                               | AVM Cluster Status                  |
| <a name="output_avm_cluster_oci_compartment_ocid"></a> [avm\_cluster\_oci\_compartment\_ocid](#output\_avm\_cluster\_oci\_compartment\_ocid) | AVM Cluster compartment OCID in OCI |
<!-- END_TF_DOCS -->