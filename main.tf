module aggregator {
  source = "./modules/aggregator"
  count  = var.aggregator != null ? 1 : 0

  name                            = var.aggregator.name
  account_aggregation_source      = var.aggregator.account_aggregation_source
  organization_aggregation_source = var.aggregator.organization_aggregation_source
  tags                            = var.aggregator.tags
}

module authorization {
  source = "./modules/authorization"
  count  = var.authorization != null ? 1 : 0

  account_id = var.authorization.account_id
  region     = var.authorization.region
  tags       = var.authorization.tags
}
