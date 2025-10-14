# oci-db-dbhome
This module provision Database Home via OCI interface

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
| [oci_database_db_home.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/database_db_home) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_home_name"></a> [db\_home\_name](#input\_db\_home\_name) | The DB home name | `string` | n/a | yes |
| <a name="input_db_home_source"></a> [db\_home\_source](#input\_db\_home\_source) | The source of DB home. e.g. VM\_CLUSTER\_NEW | `string` | n/a | yes |
| <a name="input_db_home_version"></a> [db\_home\_version](#input\_db\_home\_version) | The DB home version | `string` | n/a | yes |
| <a name="input_vm_cluster_ocid"></a> [vm\_cluster\_ocid](#input\_vm\_cluster\_ocid) | The OCID of the VM cluster | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_resource"></a> [oci\_resource](#output\_oci\_resource) | The resource object of the Database Home |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | The OCID of the Database Home |
<!-- END_TF_DOCS -->