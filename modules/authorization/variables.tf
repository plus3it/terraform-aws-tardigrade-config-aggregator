variable "account_id" {
  description = "Account ID where the authorized aggregator exists"
  type        = string
}

variable "region" {
  description = "Region where the authorized aggregator exists"
  type        = string
}

variable "tags" {
  description = "Map of tags to apply to the Config Aggregator Authorization"
  type        = map(string)
  default     = {}
}
