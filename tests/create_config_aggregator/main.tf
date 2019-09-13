provider aws {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

resource "random_string" "this" {
  length  = 6
  number  = false
  special = false
  upper   = false
}

module "no_create" {
  source = "../../"
  providers = {
    aws = aws
  }

  create_config_aggregator      = true
  aggregator_name               = "tardigrade-config-aggregator-${random_string.this.result}"
  aggregator_source_account_ids = [data.aws_caller_identity.current.account_id]
}
