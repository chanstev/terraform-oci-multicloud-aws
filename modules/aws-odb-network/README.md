# aws-odb-network
This module provision ODB Network for Oracle Database@AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.15.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                        | Type     |
|-----------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_odb_odb_network.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/aws_odb_odb_network) | resource |

## Inputs

| Name                                                                                                                                                     | Description                                                                                                | Type          | Default | Required |
|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_aws_odb_network_availability_zone_id"></a> [aws\_odb\_network\_availability\_zone\_id](#input\_aws\_odb\_network\_availability\_zone\_id) | Availability Zone ID of the ODB network                                                                    | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_display_name"></a> [aws\_odb\_network\_display\_name](#input\_aws\_odb\_network\_display\_name)                           | Name of the ODB network                                                                                    | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_client_subnet_cidr"></a> [aws\_odb\_network\_client\_subnet\_cidr](#input\_aws\_odb\_network\_client\_subnet\_cidr)       | Client subnet CIDR range of the ODB network                                                                | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_backup_subnet_cidr"></a> [aws\_odb\_network\_backup\_subnet\_cidr](#input\_aws\_odb\_network\_backup\_subnet\_cidr)       | Backup subnet CIDR range of the ODB network                                                                | `string`      | `null`  |    no    |
| <a name="input_aws_odb_network_custom_domain_name"></a> [aws\_odb\_network\_custom\_domain\_name](#input\_aws\_odb\_network\_custom\_domain\_name)       | AWS ODB network custom domain name. You can provide this value or aws_odb_network_default_dns_prefix value | `string`      | `null`  |    no    |
| <a name="input_aws_odb_network_default_dns_prefix"></a> [aws\_odb\_network\_default\_dns\_prefix](#input\_aws\_odb\_network\_default\_dns\_prefix)       | AWS ODB network default DNS prefix. You can provide this value or aws_odb_network_custom_domain_name value | `string`      | `null`  |    no    |
| <a name="input_aws_odb_network_s3_access"></a> [aws\_odb\_network\_s3\_access](#input\_aws\_odb\_network\_s3\_access)                                    | The configuration for Amazon S3 access from the ODB network                                                | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_zero_etl_access"></a> [aws\_odb\_network\_zero\_etl\_access](#input\_aws\_odb\_network\_zero\_etl\_access)                | The configuration for Zero-ETL access from the ODB network                                                 | `string`      | n/a     |   yes    |
| <a name="input_aws_odb_network_s3_policy_document"></a> [aws\_odb\_network\_s3\_policy\_document](#input\_aws\_odb\_network\_s3\_policy\_document)       | The s3 policy document for Amazon S3 access from the ODB network                                           | `string`      | `null`  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                           | Resource tags for the Exadata Infrastructure                                                               | `map(string)` | `null`  |    no    |

## Outputs

| Name                                                                                                                                         | Description                       |
|----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
| <a name="output_aws_odb_network_resource_id"></a> [aws\_odb\_network\_resource\_id](#output\_aws\_odb\_network\_resource\_id)                | Resource ID of ODB network in AWS |
| <a name="output_aws_odb_network_resource"></a> [aws\_odb\_network\_resource](#output\_aws\_odb\_network\_resource)                           | AWS ODB network resource          |
| <a name="output_aws_odb_network_oci_vcn_id"></a> [aws\_odb\_network\_oci\_vcn\_id](#output\_aws\_odb\_network\_oci\_vcn\_id)                 | AWS ODB network OCI id            |
| <a name="output_aws_odb_network_managed_services"></a> [aws\_odb\_network\_managed\_services](#output\_aws\_odb\_network\_managed\_services) | AWS ODB network managed services  |
<!-- END_TF_DOCS -->