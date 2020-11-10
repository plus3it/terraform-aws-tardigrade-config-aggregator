# terraform-aws-tardigrade-config-aggregator/authorization

Terraform module to create an AWS Config Aggregator Authorization.


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
| account\_id | Account ID where the authorized aggregator exists | `string` | n/a | yes |
| region | Region where the aggregator exists | `string` | n/a | yes |
| tags | Map of tags to apply to the Config Aggregator Authorization | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| authorization | Object with the Config Aggregate Authorization attributes |

<!-- END TFDOCS -->
