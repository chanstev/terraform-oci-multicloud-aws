# aws-odb-peering
This module provision ODB Peering Connection @ AWS

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name                                                                                                                                           | Type |
|------------------------------------------------------------------------------------------------------------------------------------------------|------|
| [aws_odb_network_peering_connection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/odb_peering_connection) | resource |

## Inputs

| Name                                                                                | Description | Type | Default | Required |
|-------------------------------------------------------------------------------------|-------------|------|---------|:--------:|
| <a name="input_odb_network_id"></a> [odb\_network\_id](#input\odb\_network\_id)     | ID of the ODB Network | `string` | n/a | yes |
| <a name="input_peer_network_id"></a> [peer\_network\_id](#input\_peer\_network\_id) | ID of VPC of Peer Network | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name)            | Display name of the ODB Peering connection | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags)                                      | Resource tags for the ODB Peering connection | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_odb_peering_connection"></a> [odb\_peering\_connection](#output\_odb\_peering\_connection) | ODB Peering Connection |
<!-- END_TF_DOCS -->