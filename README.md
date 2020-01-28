# terraform-aws-tardigrade-config-aggregator

Terraform module to either create an AWS Config configuration aggregator, authorize a configuration aggregator in
another account to collect your data, or both. By default, the module is set to create an AWS Config configuration
aggregator. If you would like to authorize another account to collect your data then you will need to toggle the
`create_config_authorization` flag.


<!-- BEGIN TFDOCS -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aggregator\_name | Name to use for the aggregator; required when `create_config_authorization` is `true` | `string` | `""` | no |
| aggregator\_source\_account\_ids | List of source account IDs for the config aggregator; required when `create_config_aggregator` is `true` | `list(string)` | `[]` | no |
| authorized\_aggregator\_account\_id | Account ID where the authorized aggregator exists; required when `create_config_authorization` is `true` | `string` | `""` | no |
| authorized\_aggregator\_region | Region where the authorized aggregator exists; required when `create_config_authorization` is `true` | `string` | `""` | no |
| create\_config\_aggregator | Toggle that controls creation/management of a config aggregator | `bool` | `true` | no |
| create\_config\_authorization | Toggle that controls creation/management of a config authorization | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| config\_aggregator\_arn | The Amazon Resource Name (ARN) of the config aggregator |
| config\_authorization\_arn | The Amazon Resource Name (ARN) of the config authorization |

<!-- END TFDOCS -->
