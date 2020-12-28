output "aggregator" {
  description = "Object with the Config Aggregator attributes"
  # account source region is null on initial apply when all_regions is true.
  # this can cause a diff on second apply when the entire resource is output
  # in the caller config, as the api updates `null` => `[]`. workaround is to
  # explicitly set regions to an empty list.
  value = merge(
    aws_config_configuration_aggregator.this,
    var.account_aggregation_source != null && var.account_aggregation_source.regions == null ? {
      account_aggregation_source = [merge(
        aws_config_configuration_aggregator.this.account_aggregation_source[0],
        { regions = [] },
      )]
    } : {},
  )
}
