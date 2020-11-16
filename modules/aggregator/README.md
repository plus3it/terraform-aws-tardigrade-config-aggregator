# terraform-aws-tardigrade-config-aggregator/aggregator

Terraform module to create an AWS Config Aggregator.


<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name to use for the Config Aggregator | `string` | n/a | yes |
| account\_aggregation\_source | Object of account sources to aggregate | <pre>object({<br>    account_ids = list(string)<br>    all_regions = bool<br>    regions     = list(string)<br>  })</pre> | `null` | no |
| organization\_aggregation\_source | Object with the AWS Organization configuration for the Config Aggregator | <pre>object({<br>    all_regions = bool<br>    regions     = list(string)<br>    role_arn    = string<br>  })</pre> | `null` | no |
| tags | Map of tags to apply to the Config Aggregator | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| aggregator | Object with the Config Aggregator attributes |

<!-- END TFDOCS -->
