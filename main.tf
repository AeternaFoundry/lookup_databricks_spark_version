data "databricks_spark_version" "spark_version_lookup" {
  for_each = var.spark_version_lookup

  beta              = each.value.beta
  genomics          = each.value.genomics
  gpu               = each.value.gpu
  graviton          = each.value.graviton
  latest            = each.value.latest
  long_term_support = each.value.long_term_support
  ml                = each.value.ml
  photon            = each.value.photon
  scala             = each.value.scala
  spark_version     = each.value.spark_version

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

