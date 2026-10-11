output "schema_registry_cluster_mode_lookup_id" {
  description = "Map of id values across all schema_registry_cluster_mode_lookup, keyed the same as var.schema_registry_cluster_mode_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_schema_registry_cluster_mode.schema_registry_cluster_mode_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_registry_cluster_mode_lookup_credentials" {
  description = "Map of credentials values across all schema_registry_cluster_mode_lookup, keyed the same as var.schema_registry_cluster_mode_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.confluent_schema_registry_cluster_mode.schema_registry_cluster_mode_lookup : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "schema_registry_cluster_mode_lookup_mode" {
  description = "Map of mode values across all schema_registry_cluster_mode_lookup, keyed the same as var.schema_registry_cluster_mode_lookup except keys with no mode are omitted"
  value       = { for k, v in data.confluent_schema_registry_cluster_mode.schema_registry_cluster_mode_lookup : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "schema_registry_cluster_mode_lookup_rest_endpoint" {
  description = "Map of rest_endpoint values across all schema_registry_cluster_mode_lookup, keyed the same as var.schema_registry_cluster_mode_lookup except keys with no rest_endpoint are omitted"
  value       = { for k, v in data.confluent_schema_registry_cluster_mode.schema_registry_cluster_mode_lookup : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "schema_registry_cluster_mode_lookup_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all schema_registry_cluster_mode_lookup, keyed the same as var.schema_registry_cluster_mode_lookup except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in data.confluent_schema_registry_cluster_mode.schema_registry_cluster_mode_lookup : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}

