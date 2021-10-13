# terraform-aws-tardigrade-config-aggregator

Terraform module to either create an AWS Config aggregator, authorize a configuration aggregator to
collect your data, or both.

## Testing

Manual testing:

```
# Replace "xxx" with an actual AWS profile, then execute the integration tests.
export AWS_PROFILE=xxx 
make terraform/pytest PYTEST_ARGS="-v --nomock"
```

For automated testing, PYTEST_ARGS is optional and no profile is needed:

```
make mockstack/up
make terraform/pytest PYTEST_ARGS="-v"
make mockstack/clean
```

<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

No providers.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregator"></a> [aggregator](#input\_aggregator) | Object specifying the configuration of a Config Aggregator | <pre>object({<br>    name = string<br>    tags = map(string)<br>    account_aggregation_source = object({<br>      account_ids = list(string)<br>      all_regions = bool<br>      regions     = list(string)<br>    })<br>    organization_aggregation_source = object({<br>      all_regions = bool<br>      regions     = list(string)<br>      role_arn    = string<br>    })<br>  })</pre> | `null` | no |
| <a name="input_authorization"></a> [authorization](#input\_authorization) | Object specifying the configuration of a Config Aggregator Authorization | <pre>object({<br>    account_id = string<br>    region     = string<br>    tags       = map(string)<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aggregator"></a> [aggregator](#output\_aggregator) | Object containing the Config Aggregator attributes |
| <a name="output_authorization"></a> [authorization](#output\_authorization) | Object containing the Config Aggregator Authorization attributes |

<!-- END TFDOCS -->
