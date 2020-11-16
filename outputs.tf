output aggregator {
  description = "Object containing the Config Aggregator attributes"
  value       = var.aggregator != null ? module.aggregator[0].aggregator : null
}

output authorization {
  description = "Object containing the Config Aggregator Authorization attributes"
  value       = var.authorization != null ? module.authorization[0].authorization : null
}
