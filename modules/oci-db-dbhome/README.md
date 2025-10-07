# oci-db-dbhome
This module provision Database Home via OCI interface

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                          | Type     |
|-------------------------------------------------------------------------------------------------------------------------------|----------|
| [oci_database_db_home.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oci_database_db_home) | resource |

## Inputs

| Name                                                                                | Description                                | Type     | Default | Required |
|-------------------------------------------------------------------------------------|--------------------------------------------|----------|---------|:--------:|
| <a name="input_vm_cluster_ocid"></a> [vm\_cluster\_ocid](#input\_vm\_cluster\_ocid) | The OCID of the VM cluster                 | `string` | n/a     |   yes    |
| <a name="input_db_home_version"></a> [db\_home\_version](#input\_db\_home\_version) | The DB home version                        | `string` | n/a     |   yes    |
| <a name="input_db_home_name"></a> [db\_home\_name](#input\_db\_home\_name)          | The DB home name                           | `string` | n/a     |   yes    |
| <a name="input_db_home_source"></a> [db\_home\_source](#input\_db\_home\_source)    | The source of DB home. e.g. VM_CLUSTER_NEW | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                     | Description             |
|------------------------------------------------------------------------------------------|-------------------------|
| <a name="output_database_db_home"></a> [database\_db\_home](#output\_database\_db\_home) | The Database DB home    |
| <a name="output_db_home_ocid"></a> [db\_home\_ocid](#output\_db\_home\_ocid)             | The OCID of the DB Home |
<!-- END_TF_DOCS -->