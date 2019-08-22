variable "create_config_authorization" {
  description = "Toggle that controls creation/management of a config authorization"
  default     = false
}

variable "create_config_aggregator" {
  description = "Toggle that controls creation/management of a config aggregator"
  default     = false
}

variable "authorized_aggregator_account_id" {
  description = "Account ID where the authorized aggregator exists; required when `create_config_authorization` is `true`"
  type        = "string"
  default     = ""
}

variable "authorized_aggregator_region" {
  description = "Region where the authorized aggregator exists; required when `create_config_authorization` is `true`"
  type        = "string"
  default     = ""
}

variable "aggregator_name" {
  description = "Name to use for the aggregator; required when `create_config_authorization` is `true`"
  type        = "string"
  default     = ""
}

variable "aggregator_source_account_ids" {
  description = "List of source account IDs for the config aggregator; required when `create_config_aggregator` is `true`"
  type        = "list"
  default     = []
}
