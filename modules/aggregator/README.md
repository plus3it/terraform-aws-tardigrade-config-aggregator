# terraform-aws-tardigrade-config-aggregator/aggregator

Terraform module to create an AWS Config Aggregator.


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
| <a name="input_name"></a> [name](#input\_name) | Name to use for the Config Aggregator | `string` | n/a | yes |
| <a name="input_account_aggregation_source"></a> [account\_aggregation\_source](#input\_account\_aggregation\_source) | Object of account sources to aggregate | <pre>object({<br/>    account_ids = list(string)<br/>    all_regions = bool<br/>    regions     = list(string)<br/>  })</pre> | `null` | no |
| <a name="input_organization_aggregation_source"></a> [organization\_aggregation\_source](#input\_organization\_aggregation\_source) | Object with the AWS Organization configuration for the Config Aggregator | <pre>object({<br/>    all_regions = bool<br/>    regions     = list(string)<br/>    role_arn    = string<br/>  })</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply to the Config Aggregator | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aggregator"></a> [aggregator](#output\_aggregator) | Object with the Config Aggregator attributes |

<!-- END TFDOCS -->
