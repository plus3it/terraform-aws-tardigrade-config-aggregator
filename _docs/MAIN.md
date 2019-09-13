# terraform-aws-tardigrade-config-aggregator

Terraform module to either create an AWS Config configuration aggregator, authorize a configuration aggregator in
another account to collect your data, or both. By default, the module is set to create an AWS Config configuration
aggregator. If you would like to authorize another account to collect your data then you will need to toggle the
`create_config_authorization` flag.
