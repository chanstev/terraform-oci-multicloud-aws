# aws-oci-adbd-quickstart
This is a quick-start template for provisioning an Autonomous Database@AWS with ODB network peering to an existing or new VPC.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.15.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.5.1 |

## Providers

| Name                                              | Version  |
|---------------------------------------------------|----------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.15.0 |
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a      |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acd"></a> [acd](#module\_acd) | ../../modules/oci-db-acd | n/a |
| <a name="module_adb"></a> [adb](#module\_adb) | ../../modules/oci-db-adb | n/a |
| <a name="module_autonomous_vm_cluster"></a> [autonomous\_vm\_cluster](#module\_autonomous\_vm\_cluster) | ../../modules/aws-odb-avmc | n/a |
| <a name="module_aws_ia_vpc"></a> [aws\_ia\_vpc](#module\_aws\_ia\_vpc) | aws-ia/vpc/aws | 4.5.0 |
| <a name="module_exadata_infrastructure"></a> [exadata\_infrastructure](#module\_exadata\_infrastructure) | github.com/chanstev/terraform-oci-multicloud-aws//modules/aws-odb-exadata-infra | n/a |
| <a name="module_network_peering"></a> [network\_peering](#module\_network\_peering) | ../../modules/aws-odb-peering | n/a |
| <a name="module_odb_network"></a> [odb\_network](#module\_odb\_network) | ../../modules/aws-odb-network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acd_display_name"></a> [acd\_display\_name](#input\_acd\_display\_name) | Display name for the Autonomous Container Database | `string` | n/a | yes |
| <a name="input_acd_patch_model"></a> [acd\_patch\_model](#input\_acd\_patch\_model) | The Autonomous Container Database patch model | `string` | `"RELEASE_UPDATES"` | no |
| <a name="input_adb_admin_password"></a> [adb\_admin\_password](#input\_adb\_admin\_password) | Admin password for the Autonomous Database | `string` | n/a | yes |
| <a name="input_adb_compute_count"></a> [adb\_compute\_count](#input\_adb\_compute\_count) | Compute count for the Autonomous Database | `number` | `2` | no |
| <a name="input_adb_compute_model"></a> [adb\_compute\_model](#input\_adb\_compute\_model) | Compute model for the Autonomous Database | `string` | `"ECPU"` | no |
| <a name="input_adb_data_storage_size_in_tbs"></a> [adb\_data\_storage\_size\_in\_tbs](#input\_adb\_data\_storage\_size\_in\_tbs) | Data storage size in TBs for the Autonomous Database | `number` | `1` | no |
| <a name="input_adb_db_name"></a> [adb\_db\_name](#input\_adb\_db\_name) | Database name for the Autonomous Database | `string` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | AWS resources availability zone, e.g. us-west-2c | `string` | n/a | yes |
| <a name="input_availability_zone_id"></a> [availability\_zone\_id](#input\_availability\_zone\_id) | AWS resources availability zone ID, e.g. usw2-az3 | `string` | n/a | yes |
| <a name="input_avmc_autonomous_data_storage_size_in_tbs"></a> [avmc\_autonomous\_data\_storage\_size\_in\_tbs](#input\_avmc\_autonomous\_data\_storage\_size\_in\_tbs) | Autonomous data storage size in TBs | `number` | `5` | no |
| <a name="input_avmc_cpu_core_count_per_node"></a> [avmc\_cpu\_core\_count\_per\_node](#input\_avmc\_cpu\_core\_count\_per\_node) | CPU core count per node | `number` | `16` | no |
| <a name="input_avmc_db_servers"></a> [avmc\_db\_servers](#input\_avmc\_db\_servers) | List of DB server IDs | `set(string)` | `null` | no |
| <a name="input_avmc_is_mtls_enabled_vm_cluster"></a> [avmc\_is\_mtls\_enabled\_vm\_cluster](#input\_avmc\_is\_mtls\_enabled\_vm\_cluster) | Is mTLS enabled for the Autonomous VM cluster | `bool` | `false` | no |
| <a name="input_avmc_license_model"></a> [avmc\_license\_model](#input\_avmc\_license\_model) | License model for the autonomous VM cluster (LICENSE\_INCLUDED or BRING\_YOUR\_OWN\_LICENSE) | `string` | `"BRING_YOUR_OWN_LICENSE"` | no |
| <a name="input_avmc_maintenance_window"></a> [avmc\_maintenance\_window](#input\_avmc\_maintenance\_window) | Maintenance window configuration for the Autonomous VM cluster | <pre>object({<br/>    preference = string<br/>    days_of_week = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    hours_of_day       = optional(set(number))<br/>    lead_time_in_weeks = optional(number)<br/>    months = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    weeks_of_month = optional(set(number))<br/>  })</pre> | <pre>{<br/>  "preference": "NO_PREFERENCE"<br/>}</pre> | no |
| <a name="input_avmc_memory_per_oracle_compute_unit_in_gbs"></a> [avmc\_memory\_per\_oracle\_compute\_unit\_in\_gbs](#input\_avmc\_memory\_per\_oracle\_compute\_unit\_in\_gbs) | Memory per Oracle compute unit in GBs | `number` | `2` | no |
| <a name="input_avmc_name"></a> [avmc\_name](#input\_avmc\_name) | Display name for the autonomous VM cluster | `string` | n/a | yes |
| <a name="input_avmc_scan_listener_port_non_tls"></a> [avmc\_scan\_listener\_port\_non\_tls](#input\_avmc\_scan\_listener\_port\_non\_tls) | SCAN listener port for non-TLS (TCP) protocol | `number` | `1521` | no |
| <a name="input_avmc_scan_listener_port_tls"></a> [avmc\_scan\_listener\_port\_tls](#input\_avmc\_scan\_listener\_port\_tls) | SCAN listener port for TLS (TCP) protocol | `number` | `2484` | no |
| <a name="input_avmc_total_container_databases"></a> [avmc\_total\_container\_databases](#input\_avmc\_total\_container\_databases) | Total number of container databases | `number` | `1` | no |
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | Aws access key | `string` | `null` | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Aws profile name | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region, e.g. us-west-2 | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | Aws secret key | `string` | `null` | no |
| <a name="input_aws_shared_config_files"></a> [aws\_shared\_config\_files](#input\_aws\_shared\_config\_files) | Aws shared config files | `list(string)` | <pre>[<br/>  "~/.aws/config"<br/>]</pre> | no |
| <a name="input_exadata_infrastructure_compute_count"></a> [exadata\_infrastructure\_compute\_count](#input\_exadata\_infrastructure\_compute\_count) | Number of Compute Servers | `number` | `2` | no |
| <a name="input_exadata_infrastructure_customer_contacts"></a> [exadata\_infrastructure\_customer\_contacts](#input\_exadata\_infrastructure\_customer\_contacts) | List of customer contacts to send notifications to OCI | `set(object({ email = string }))` | `null` | no |
| <a name="input_exadata_infrastructure_maintenance_window"></a> [exadata\_infrastructure\_maintenance\_window](#input\_exadata\_infrastructure\_maintenance\_window) | Maintenance window configuration for the Exadata Infrastructure | <pre>object({<br/>    patching_mode                    = string<br/>    preference                       = string<br/>    is_custom_action_timeout_enabled = optional(bool)<br/>    custom_action_timeout_in_mins    = optional(number)<br/>    days_of_week = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    hours_of_day       = optional(set(number))<br/>    lead_time_in_weeks = optional(number)<br/>    months = optional(set(object(<br/>      { name = string }<br/>    )))<br/>    weeks_of_month = optional(set(number))<br/>  })</pre> | <pre>{<br/>  "custom_action_timeout_in_mins": 15,<br/>  "is_custom_action_timeout_enabled": false,<br/>  "patching_mode": "ROLLING",<br/>  "preference": "NO_PREFERENCE"<br/>}</pre> | no |
| <a name="input_exadata_infrastructure_name"></a> [exadata\_infrastructure\_name](#input\_exadata\_infrastructure\_name) | Display name of Exadata Infrastructure | `string` | n/a | yes |
| <a name="input_exadata_infrastructure_shape"></a> [exadata\_infrastructure\_shape](#input\_exadata\_infrastructure\_shape) | Shape of Exadata Infrastructure | `string` | `"Exadata.X11M"` | no |
| <a name="input_exadata_infrastructure_storage_count"></a> [exadata\_infrastructure\_storage\_count](#input\_exadata\_infrastructure\_storage\_count) | Number of Storage Servers | `number` | `3` | no |
| <a name="input_oci_auth"></a> [oci\_auth](#input\_oci\_auth) | OCI Authentication method, default: APIKey, InstancePrincipal \| ResourcePrincipal \| SecurityToken | `string` | `"APIKey"` | no |
| <a name="input_oci_config_file_profile"></a> [oci\_config\_file\_profile](#input\_oci\_config\_file\_profile) | OCI Config file name | `string` | `"DEFAULT"` | no |
| <a name="input_oci_fingerprint"></a> [oci\_fingerprint](#input\_oci\_fingerprint) | Fingerprint for the key pair being used | `string` | `null` | no |
| <a name="input_oci_private_key_password"></a> [oci\_private\_key\_password](#input\_oci\_private\_key\_password) | Passphrase used for the key, if it's encrypted | `string` | `null` | no |
| <a name="input_oci_private_key_path"></a> [oci\_private\_key\_path](#input\_oci\_private\_key\_path) | The path (including filename) of the private key | `string` | `null` | no |
| <a name="input_oci_region"></a> [oci\_region](#input\_oci\_region) | OCI Region, e.g. us-phoenix-1 | `string` | `null` | no |
| <a name="input_oci_tenancy_ocid"></a> [oci\_tenancy\_ocid](#input\_oci\_tenancy\_ocid) | OCID of the OCI tenancy | `string` | `null` | no |
| <a name="input_oci_user_ocid"></a> [oci\_user\_ocid](#input\_oci\_user\_ocid) | OCID of the OCI user | `string` | `null` | no |
| <a name="input_odb_network_backup_subnet_cidr"></a> [odb\_network\_backup\_subnet\_cidr](#input\_odb\_network\_backup\_subnet\_cidr) | CIDR range of ODB backup subnet (optional) | `string` | `null` | no |
| <a name="input_odb_network_client_subnet_cidr"></a> [odb\_network\_client\_subnet\_cidr](#input\_odb\_network\_client\_subnet\_cidr) | CIDR range of ODB client subnet | `string` | n/a | yes |
| <a name="input_odb_network_default_dns_prefix"></a> [odb\_network\_default\_dns\_prefix](#input\_odb\_network\_default\_dns\_prefix) | Default DNS prefix for the ODB network (optional) | `string` | `null` | no |
| <a name="input_odb_network_name"></a> [odb\_network\_name](#input\_odb\_network\_name) | Name of the ODB network | `string` | n/a | yes |
| <a name="input_odb_network_s3_access"></a> [odb\_network\_s3\_access](#input\_odb\_network\_s3\_access) | S3 access for the ODB network (ENABLED or DISABLED) | `string` | `"DISABLED"` | no |
| <a name="input_odb_network_s3_policy_document"></a> [odb\_network\_s3\_policy\_document](#input\_odb\_network\_s3\_policy\_document) | S3 policy document as string (optional) | `string` | `null` | no |
| <a name="input_odb_network_zero_etl_access"></a> [odb\_network\_zero\_etl\_access](#input\_odb\_network\_zero\_etl\_access) | Zero ETL access for the ODB network (ENABLED or DISABLED) | `string` | `"DISABLED"` | no |
| <a name="input_odb_peering_connection_display_name"></a> [odb\_peering\_connection\_display\_name](#input\_odb\_peering\_connection\_display\_name) | Display name for the ODB peering connection (optional) | `string` | `null` | no |
| <a name="input_odb_peering_connection_peer_network_id"></a> [odb\_peering\_connection\_peer\_network\_id](#input\_odb\_peering\_connection\_peer\_network\_id) | ID of VPC of Peer Network | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources | `map(string)` | <pre>{<br/>  "provisionedby": "terraform",<br/>  "usecase": "Oracle Database@AWS"<br/>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR range of VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | n/a | yes |
| <a name="input_vpc_workload_subnet_cidr"></a> [vpc\_workload\_subnet\_cidr](#input\_vpc\_workload\_subnet\_cidr) | CIDR range of Workload Subnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acd_id"></a> [acd\_id](#output\_acd\_id) | The OCID of the created ACD |
| <a name="output_avm_cluster_id"></a> [avm\_cluster\_id](#output\_avm\_cluster\_id) | AVM Cluster ID |
| <a name="output_avm_cluster_ocid"></a> [avm\_cluster\_ocid](#output\_avm\_cluster\_ocid) | AVM Cluster OCID |
| <a name="output_aws_odb_exa_resource_id"></a> [aws\_odb\_exa\_resource\_id](#output\_aws\_odb\_exa\_resource\_id) | Exadata Infrastructure ID in AWS |
| <a name="output_aws_odb_network_oci_vcn_id"></a> [aws\_odb\_network\_oci\_vcn\_id](#output\_aws\_odb\_network\_oci\_vcn\_id) | AWS ODB network OCI id |
| <a name="output_aws_odb_network_resource_id"></a> [aws\_odb\_network\_resource\_id](#output\_aws\_odb\_network\_resource\_id) | Resource ID of ODB network in AWS |
| <a name="output_db_id"></a> [db\_id](#output\_db\_id) | The OCID of the created ADBD |
| <a name="output_exa_resource_ocid"></a> [exa\_resource\_ocid](#output\_exa\_resource\_ocid) | Exadata Infrastructure OCID |
| <a name="output_odb_peering_connection"></a> [odb\_peering\_connection](#output\_odb\_peering\_connection) | ODB Peering Connection |
<!-- END_TF_DOCS -->