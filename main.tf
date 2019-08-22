provider "aws" {}

resource "aws_config_configuration_aggregator" "this" {
  count = "${var.create_config_aggregator ? 1 : 0}"

  name = "${var.aggregator_name}"

  account_aggregation_source = {
    account_ids = "${var.aggregator_source_account_ids}"
    all_regions = "true"
  }
}

resource "aws_config_aggregate_authorization" "this" {
  count = "${var.create_config_authorization ? 1 : 0}"

  account_id = "${var.authorized_aggregator_account_id}"
  region     = "${var.authorized_aggregator_region}"
}
