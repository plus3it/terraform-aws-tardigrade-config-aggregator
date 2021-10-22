module "aggregator" {
  source = "./modules/aggregator"
  count  = var.aggregator != null ? 1 : 0

  name                            = var.aggregator != null ? var.aggregator.name : null
  account_aggregation_source      = var.aggregator != null ? var.aggregator.account_aggregation_source : null
  organization_aggregation_source = var.aggregator != null ? var.aggregator.organization_aggregation_source : null
  tags                            = var.aggregator != null ? var.aggregator.tags : null
}

module "authorization" {
  source = "./modules/authorization"
  count  = var.authorization != null ? 1 : 0

  account_id = var.authorization != null ? var.authorization.account_id : null
  region     = var.authorization != null ? var.authorization.region : null
  tags       = var.authorization != null ? var.authorization.tags : null
}
