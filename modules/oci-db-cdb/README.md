# oci-db-cdb
This module provision Container Database (CDB) via OCI interface

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_database_database.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/database_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_backup"></a> [auto\_backup](#input\_auto\_backup) | Whether auto back enabled for container databases. | `bool` | `false` | no |
| <a name="input_db_admin_password"></a> [db\_admin\_password](#input\_db\_admin\_password) | The administrator password for the database | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name of the database | `string` | n/a | yes |
| <a name="input_db_source"></a> [db\_source](#input\_db\_source) | The source of the database. Possible values are NONE, DB\_BACKUP, DATABASE, or CROSS\_REGION\_DATAGUARD | `string` | `"NONE"` | no |
| <a name="input_exa_db_home_ocid"></a> [exa\_db\_home\_ocid](#input\_exa\_db\_home\_ocid) | The OCID of the Exadata DB Home | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_resource"></a> [oci\_resource](#output\_oci\_resource) | The resource object of the Container Database |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | The OCID of the Container Database |
<!-- END_TF_DOCS -->