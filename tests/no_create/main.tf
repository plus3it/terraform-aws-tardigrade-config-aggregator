provider aws {
  region = "us-east-1"
}

module "create_config_aggregator" {
  source = "../../"
  providers = {
    aws = aws
  }

  create_config_aggregator = false
}
