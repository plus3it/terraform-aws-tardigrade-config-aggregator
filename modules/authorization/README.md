# terraform-aws-tardigrade-config-aggregator/authorization

Terraform module to create an AWS Config Aggregator Authorization.


<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID where the authorized aggregator exists | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where the authorized aggregator exists | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply to the Config Aggregator Authorization | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_authorization"></a> [authorization](#output\_authorization) | Object with the Config Aggregate Authorization attributes |

<!-- END TFDOCS -->
