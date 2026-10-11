variable "spark_version_lookup" {
  description = <<EOT
Map of spark_version_lookup, attributes below
Optional:
    - beta
    - genomics
    - gpu
    - graviton
    - latest
    - long_term_support
    - ml
    - photon
    - scala
    - spark_version
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    beta              = optional(bool)
    genomics          = optional(bool)
    gpu               = optional(bool)
    graviton          = optional(bool)
    latest            = optional(bool)
    long_term_support = optional(bool)
    ml                = optional(bool)
    photon            = optional(bool)
    scala             = optional(string)
    spark_version     = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

