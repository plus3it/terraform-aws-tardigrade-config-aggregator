output "config_authorization_arn" {
  description = "The Amazon Resource Name (ARN) of the config authorization"
  value       = "${join("", aws_config_aggregate_authorization.this.*.arn)}"
}

output "config_aggregator_arn" {
  description = "The Amazon Resource Name (ARN) of the config aggregator"
  value       = "${join("", aws_config_configuration_aggregator.this.*.arn)}"
}
