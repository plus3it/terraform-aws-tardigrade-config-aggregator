# terraform-aws-tardigrade-config-aggregator

Terraform module to either create an AWS Config aggregator, authorize a configuration aggregator to
collect your data, or both.

<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aggregator | Object specifying the configuration of a Config Aggregator | <pre>object({<br>    name = string<br>    tags = map(string)<br>    account_aggregation_source = object({<br>      account_ids = list(string)<br>      all_regions = bool<br>      regions     = list(string)<br>    })<br>    organization_aggregation_source = object({<br>      all_regions = bool<br>      regions     = list(string)<br>      role_arn    = string<br>    })<br>  })</pre> | `null` | no |
| authorization | Object specifying the configuration of a Config Aggregator Authorization | <pre>object({<br>    account_id = string<br>    region     = string<br>    tags       = map(string)<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| aggregator | Object containing the Config Aggregator attributes |
| authorization | Object containing the Config Aggregator Authorization attributes |

<!-- END TFDOCS -->
