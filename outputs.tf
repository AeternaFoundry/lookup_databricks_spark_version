output "spark_version_lookup_id" {
  description = "Map of id values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spark_version_lookup_beta" {
  description = "Map of beta values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no beta are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.beta if v.beta != null }
}
output "spark_version_lookup_genomics" {
  description = "Map of genomics values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no genomics are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.genomics if v.genomics != null }
}
output "spark_version_lookup_gpu" {
  description = "Map of gpu values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no gpu are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.gpu if v.gpu != null }
}
output "spark_version_lookup_graviton" {
  description = "Map of graviton values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no graviton are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.graviton if v.graviton != null }
}
output "spark_version_lookup_latest" {
  description = "Map of latest values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no latest are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.latest if v.latest != null }
}
output "spark_version_lookup_long_term_support" {
  description = "Map of long_term_support values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no long_term_support are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.long_term_support if v.long_term_support != null }
}
output "spark_version_lookup_ml" {
  description = "Map of ml values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no ml are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.ml if v.ml != null }
}
output "spark_version_lookup_photon" {
  description = "Map of photon values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no photon are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.photon if v.photon != null }
}
output "spark_version_lookup_provider_config" {
  description = "Map of provider_config values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "spark_version_lookup_scala" {
  description = "Map of scala values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no scala are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.scala if v.scala != null && length(v.scala) > 0 }
}
output "spark_version_lookup_spark_version" {
  description = "Map of spark_version values across all spark_version_lookup, keyed the same as var.spark_version_lookup except keys with no spark_version are omitted"
  value       = { for k, v in data.databricks_spark_version.spark_version_lookup : k => v.spark_version if v.spark_version != null && length(v.spark_version) > 0 }
}

