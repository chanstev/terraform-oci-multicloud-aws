# oci-db-adb
This module provision Autonomous Database via OCI interface

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                  | Type     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [oci_database_autonomous_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oci_database_autonomous_database) | resource |

## Inputs

| Name                                                                                                                                     | Description                                                                                                   | Type          | Default | Required |
|------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password)                                                           | The administrator password of the Autonomous Database                                                         | `string`      | n/a     |   yes    |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid)                                                     | The OCID of the Compartment                                                                                   | `string`      | n/a     |   yes    |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name)                                                                                | The name of the database                                                                                      | `string`      | n/a     |   yes    |
| <a name="input_autonomous_container_database_id"></a> [autonomous\_container\_database\_id](#input\_autonomous\_container\_database\_id) | The Autonomous Container Database OCID. Used only by Autonomous Database on Dedicated Exadata Infrastructure. | `string`      | n/a     |   yes    |
| <a name="input_db_version"></a> [db\_version](#input\_db\_version)                                                                       | The version of the database                                                                                   | `string`      | `null`  |    no    |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name)                                                                 | The display name of the Autonomous Database                                                                   | `string`      | `null`  |    no    |
| <a name="input_db_workload"></a> [db\_workload](#input\_db_workload)                                                                     | The workload of the database                                                                                  | `string`      | `null`  |    no    |
| <a name="input_compute_count"></a> [compute\_count](#input\_compute\_count)                                                              | The compute count of the Autonomous Database                                                                  | `number`      | `null`  |    no    |
| <a name="input_data_storage_size_in_tbs"></a> [data\_storage\_size\_in\_tbs](#input\_data\_storage\_size\_in\_tbs)                       | The data storage size of the Autonomous Database in tbs                                                       | `number`      | `null`  |    no    |
| <a name="input_compute_model"></a> [compute\_model](#input\_compute\_model)                                                              | The compute model of the Autonomous Database                                                                  | `string`      | `null`  |    no    |
| <a name="input_is_dedicated"></a> [is\_dedicated](#input\_is\_dedicated)                                                                 | Is the Autonomous Database dedicated                                                                          | `string`      | `null`  |    no    |
| <a name="input_is_mtls_connection_required"></a> [is\_mtls\_connection\_required](#input\_is\_mtls\_connection\_required)                | Is the mtls connection required in the Autonomous Database                                                    | `string`      | `null`  |    no    |
| <a name="input_license_model"></a> [license\_model](#input\_license\_model)                                                              | The license model of the Autonomous Database creation                                                         | `string`      | `null`  |    no    |
| <a name="input_whitelisted_ips"></a> [whitelisted\_ips](#input\_whitelisted\_ips)                                                        | The set of whitelisted IPs for the Autonomous Database                                                        | `set(string)` | `null`  |    no    |
| <a name="input_is_data_guard_enabled"></a> [is\_data\_guard\_enabled](#input\_is\_data\_guard\_enabled)                                  | Is the data guard enabled in the Autonomous Database                                                          | `string`      | `null`  |    no    |
| <a name="input_is_local_data_guard_enabled"></a> [is\_local\_data\_guard\_enabled](#input\_is\_local\_data\_guard\_enabled)              | Is the local data guard enabled in the Autonomous Database                                                    | `string`      | `null`  |    no    |

## Outputs

| Name                                                           | Description                  |
|----------------------------------------------------------------|------------------------------|
| <a name="output_db_name"></a> [db\_name](#output\_db\_name)    | Autonomous DB name           |
| <a name="output_db_id"></a> [db\_id](#output\_db\_id)          | Autonomous DB OCID           |
| <a name="output_db_state"></a> [db\_state](#output\_db\_state) | Autonomous DB state          |
| <a name="output_db_conn"></a> [db\_conn](#output\_db\_conn)    | Autonomous DB connection url |
| <a name="output_password"></a> [password](#output\_password)   | Autonomous DB password       |
<!-- END_TF_DOCS -->