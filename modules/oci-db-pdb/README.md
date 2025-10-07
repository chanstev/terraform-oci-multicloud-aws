# oci-db-pdb
This module provision Pluggable Database (PDB) via OCI interface.

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                                | Type     |
|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [oci_database_pluggable_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oci_database_pluggable_database) | resource |

## Inputs

| Name                                                                                                             | Description                                                           | Type          | Default | Required |
|------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_container_database_ocid"></a> [exa\_container\_database\_ocid](#input\_container\_database\_ocid) | OCID of the container database on which pdb(s) are going to be hosted | `string`      | n/a     |   yes    |
| <a name="input_pdb_details"></a> [pdb\_details](#input\_pdb\_details)                                            | A map encapsulating PDB(s) details                                    | `map(object)` | n/a     |   yes    |

## Outputs

| Name                                                     | Description                                      |
|----------------------------------------------------------|--------------------------------------------------|
| <a name="output_pdb_id"></a> [pdb\_id](#output\_pdb\_id) | The OCID(s) of the created pluggable database(s) |
<!-- END_TF_DOCS -->