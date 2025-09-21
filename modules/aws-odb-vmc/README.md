# aws-odb-vmc
This module provision VM clusters @ AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                              | Type     |
|-----------------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_odb_cloud_vm_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/odb_cloud_vm_cluster) | resource |

## Inputs

| Name                                                                                                                            | Description                                               | Type          | Default | Required |
|---------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#input\_aws\_odb\_exa\_resource\_id)                 | OBD Exadata Infrastructure Resource ID                    | `string`      | n/a     |   yes    |
| <a name="input_cpu_core_count"></a> [cpu\_core\_count](#input\_cpu\_core\_count)                                                | Number of CPU cores for the VM cluster                    | `number`      | n/a     |   yes    |
| <a name="input_vm_cluster_display_name"></a> [vm\_cluster\_display\_name](#input\_vm\_cluster\_display\_name)                   | Display name for the VM cluster                           | `string`      | n/a     |   yes    |
| <a name="input_gi_version"></a> [gi\_version](#input\_gi\_version)                                                              | GI version for the VM cluster                             | `string`      | n/a     |   yes    |
| <a name="input_hostname_prefix"></a> [hostname_prefix](#input\_hostname_prefix)                                                 | Hostname prefix for the VM cluster                        | `string`      | n/a     |   yes    |
| <a name="input_ssh_public_keys"></a> [ssh\_public\_keys](#input\_ssh\_public\_keys)                                             | Set of SSH public keys for the VM cluster                 | `set(string)` | n/a     |   yes    |
| <a name="input_aws_odb_network_resource_id"></a> [aws\_odb\_network\_resource\_id](#input\_aws\_odb\_network\_resource\_id)     | OBD Network Resource ID                                   | `string`      | n/a     |   yes    |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name)                                                        | Name for the Grid Infrastructure cluster                  | `string`      | `null`  |    no    |
| <a name="input_is_diagnostics_events_enabled"></a> [is\_diagnostics\_events\_enabled](#input\_is\_diagnostics\_events\_enabled) | Whether diagnostics events is enabled for the VM cluster  | bool          | n/a     |   yes    |
| <a name="input_is_health_monitoring_enabled"></a> [is\_health\_monitoring\_enabled](#input\_is\_health\_monitoring\_enabled)    | Whether health monitoring is enabled for the VM cluster   | bool          | n/a     |   yes    |
| <a name="input_is_incident_logs_enabled"></a> [is\_incident\_logs\_enabled](#input\_is\_incident\_logs\_enabled)                | Whether incident logs is enabled for the VM cluster       | bool          | n/a     |   yes    |
| <a name="input_data_storage_size_in_tbs"></a> [data\_storage\_size\_in\_tbs](#input\_data\_storage\_size\_in\_tbs)              | Number of data storage size in tbs for the VM cluster     | `number`      | `null`  |    no    |
| <a name="input_db_node_storage_size_in_gbs"></a> [db\_node\_storage\_size\_in\_gbs](#input\_db\_node\_storage\_size\_in\_gbs)   | DB node storage size in gbs for the VM cluster            | `number`      | `null`  |    no    |
| <a name="input_db_servers"></a> [db\_servers](#input\_db\_servers)                                                              | The set of database servers to be used for the VM cluster | `set(string)` | n/a     |   yes    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                  | Resource tags for the VM cluster                          | `map(string)` | `null`  |    no    |
| <a name="input_is_local_backup_enabled"></a> [is\_local\_backup\_enabled](#input\_is\_local\_backup\_enabled)                   | Whether local backup is enabled for the VM cluster        | `bool`        | `false` |    no    |
| <a name="input_is_sparse_disk_group_enabled"></a> [is\_sparse\_disk\_group\_enabled](#input\_is\_sparse\_disk\_group\_enabled)  | Whether sparse disk group is enabled for the VM cluster   | `bool`        | `false` |    no    |
| <a name="input_license_model"></a> [license\_model](#input\_license\_model)                                                     | License model for the VM cluster                          | `string`      | `null`  |    no    |
| <a name="input_memory_size_in_gbs"></a> [memory\_size\_in\_gbs](#input\_memory\_size\_in\_gbs)                                  | Memory size in tbs for the VM cluster                     | `number`      | `null`  |    no    |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone)                                                                 | The time zone to use for the VM cluster                   | `string`      | `null`  |    no    |
| <a name="input_scan_listener_port_tls"></a> [scan\_listener\_port\_tls](#input\_scan\_listener\_port\_tls)                      | The SCAN listener port for TLS (TCP) protocol             | `number`      | `null`  |    no    |

## Outputs

| Name                                                                                                                  | Description               |
|-----------------------------------------------------------------------------------------------------------------------|---------------------------|
| <a name="output_vm_cluster_id"></a> [vm\_cluster\_id](#output\_vm\_cluster\_id)                                       | VM Cluster ID             |
| <a name="output_vm_cluster_display_name"></a> [vm\_cluster\_display\_name](#output\_vm\_cluster\_display\_name)       | VM Cluster Display Name   |
| <a name="output_vm_cluster_ocid"></a> [vm\_cluster\_ocid](#output\_vm\_cluster\_ocid)                                 | VM Cluster OCID           |
| <a name="output_vm_cluster_oci_url"></a> [vm\_cluster\_oci\_url](#output\_vm\_cluster\_oci\_url)                      | VM Cluster OCI URL        |
| <a name="output_vm_cluster_arn"></a> [vm\_cluster\_arn](#output\_vm\_cluster\_arn)                                    | VM Cluster ARN            |
| <a name="output_vm_cluster_compartment_id"></a> [vm\_cluster\_compartment\_id](#output\_vm\_cluster\_compartment\_id) | VM Cluster Compartment ID |
<!-- END_TF_DOCS -->