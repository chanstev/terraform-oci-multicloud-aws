# oci-db-cdb
This module provision Container Database (CDB) via OCI interface

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                            | Type     |
|---------------------------------------------------------------------------------------------------------------------------------|----------|
| [oci_database_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oci_database_database) | resource |

## Inputs

| Name                                                                                      | Description                                                                                          | Type     | Default | Required |
|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|----------|---------|:--------:|
| <a name="input_exa_db_home_ocid"></a> [exa\_db\_home\_ocid](#input\_exa\_db\_home\_ocid)  | The OCID of the Exadata DB Home                                                                      | `string` | n/a     |   yes    |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name)                                 | The name of the database                                                                             | `string` | n/a     |   yes    |
| <a name="input_db_admin_password"></a> [db\_admin\_password](#input\_db\_admin\_password) | The administrator password for the database                                                          | `string` | n/a     |   yes    |
| <a name="input_db_source"></a> [db\_source](#input\_db\_source)                           | The source of the database. Possible values are NONE, DB_BACKUP, DATABASE, or CROSS_REGION_DATAGUARD | `string` | `NONE`  |    no    |

## Outputs

| Name                                                                                           | Description                                                                  |
|------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|
| <a name="output_cdb_id"></a> [cdb\_id](#output\_cdb\_id)                                       | The OCID of the created CDB                                                  |
| <a name="output_cdb_name"></a> [cdb\_name](#output\_cdb\_name)                                 | The name of the created CDB                                                  |
| <a name="output_cdb_state"></a> [cdb\_state](#output\_cdb\_state)                              | The current state of the created CDB                                         |
| <a name="output_cdb_db_home_id"></a> [cdb\_db\_home\_id](#output\_cdb\_db\_home\_id)           | The OCID of the DB Home where the CDB was created                            |
| <a name="output_cdb_admin_password"></a> [cdb\_admin\_password](#output\_cdb\_admin\_password) | The administrator password for the created CDB. This is required for the pdb |
| <a name="output_cdb_source"></a> [cdb\_source](#output\_cdb\_source)                           | The source of the created CDB                                                |
<!-- END_TF_DOCS -->