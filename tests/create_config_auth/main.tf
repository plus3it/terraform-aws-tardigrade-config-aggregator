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

module "create_config_aggregator" {
  source = "../../"
  providers = {
    aws = aws
  }

  aggregator_name                  = "tardigrade-config-auth-${random_string.this.result}"
  authorized_aggregator_account_id = data.aws_caller_identity.current.account_id
  authorized_aggregator_region     = "us-east-1"
}
