provider "aws" {
  region = "us-east-1"
}

module "config_authorization" {
  source = "../../"

  authorization = {
    account_id = data.aws_caller_identity.current.account_id
    region     = "us-east-1"
    tags       = {}
  }
}

resource "random_string" "this" {
  length  = 6
  number  = false
  special = false
  upper   = false
}

data "aws_caller_identity" "current" {}

output "config_authorization" {
  value = module.config_authorization
}
