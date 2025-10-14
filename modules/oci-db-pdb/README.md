# oci-db-pdb
This module provision Pluggable Database (PDB) via OCI interface.

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
| [oci_database_pluggable_database.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/database_pluggable_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_database_ocid"></a> [container\_database\_ocid](#input\_container\_database\_ocid) | OCID of the container database on which pdb(s) are going to be hosted | `string` | n/a | yes |
| <a name="input_pdb_admin_password"></a> [pdb\_admin\_password](#input\_pdb\_admin\_password) | n/a | `string` | `"Admin password of the Pluggable Database"` | no |
| <a name="input_pdb_name"></a> [pdb\_name](#input\_pdb\_name) | n/a | `string` | `"Name of the Pluggable Database"` | no |
| <a name="input_pdb_tde_wallet_password"></a> [pdb\_tde\_wallet\_password](#input\_pdb\_tde\_wallet\_password) | n/a | `string` | `"TDE wallet password of the Pluggable Database"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oci_resource"></a> [oci\_resource](#output\_oci\_resource) | The resource object of the Pluggable Database |
| <a name="output_oci_resource_ocid"></a> [oci\_resource\_ocid](#output\_oci\_resource\_ocid) | The OCID of the Pluggable Database |
<!-- END_TF_DOCS -->