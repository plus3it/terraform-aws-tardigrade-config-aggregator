variable aggregator {
  description = "Object specifying the configuration of a Config Aggregator"
  type = object({
    name = string
    tags = map(string)
    account_aggregation_source = object({
      account_ids = list(string)
      all_regions = bool
      regions     = list(string)
    })
    organization_aggregation_source = object({
      all_regions = bool
      regions     = list(string)
      role_arn    = string
    })
  })
  default = null
}

variable authorization {
  description = "Object specifying the configuration of a Config Aggregator Authorization"
  type = object({
    account_id = string
    region     = string
    tags       = map(string)
  })
  default = null
}
