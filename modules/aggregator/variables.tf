variable "name" {
  description = "Name to use for the Config Aggregator"
  type        = string
}

variable "account_aggregation_source" {
  description = "Object of account sources to aggregate"
  type = object({
    account_ids = list(string)
    all_regions = bool
    regions     = list(string)
  })
  default = null
}

variable "organization_aggregation_source" {
  description = "Object with the AWS Organization configuration for the Config Aggregator"
  type = object({
    all_regions = bool
    regions     = list(string)
    role_arn    = string
  })
  default = null
}

variable "tags" {
  description = "Map of tags to apply to the Config Aggregator"
  type        = map(string)
  default     = {}
}
