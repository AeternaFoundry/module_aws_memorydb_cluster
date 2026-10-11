variable "memorydb_clusters" {
  description = <<EOT
Map of memorydb_clusters, attributes below
Required:
    - acl_name
    - node_type
Optional:
    - auto_minor_version_upgrade
    - data_tiering
    - description
    - engine
    - engine_version
    - final_snapshot_name
    - ip_discovery
    - kms_key_arn
    - maintenance_window
    - multi_region_cluster_name
    - name
    - name_prefix
    - network_type
    - num_replicas_per_shard
    - num_shards
    - parameter_group_name
    - port
    - region
    - security_group_ids
    - snapshot_arns
    - snapshot_name
    - snapshot_retention_limit
    - snapshot_window
    - sns_topic_arn
    - subnet_group_name
    - tags
    - tags_all
    - tls_enabled
EOT

  type = map(object({
    acl_name                   = string
    node_type                  = string
    tags                       = optional(map(string))
    subnet_group_name          = optional(string)
    sns_topic_arn              = optional(string)
    snapshot_window            = optional(string)
    snapshot_retention_limit   = optional(number)
    snapshot_name              = optional(string)
    snapshot_arns              = optional(list(string))
    security_group_ids         = optional(set(string))
    region                     = optional(string)
    port                       = optional(number)
    parameter_group_name       = optional(string)
    num_shards                 = optional(number)
    num_replicas_per_shard     = optional(number)
    network_type               = optional(string)
    name_prefix                = optional(string)
    name                       = optional(string)
    multi_region_cluster_name  = optional(string)
    maintenance_window         = optional(string)
    kms_key_arn                = optional(string)
    ip_discovery               = optional(string)
    final_snapshot_name        = optional(string)
    engine_version             = optional(string)
    engine                     = optional(string)
    description                = optional(string)
    data_tiering               = optional(bool)
    auto_minor_version_upgrade = optional(bool)
    tags_all                   = optional(map(string))
    tls_enabled                = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.memorydb_clusters : (
        v.num_replicas_per_shard == null || (v.num_replicas_per_shard >= 0 && v.num_replicas_per_shard <= 5)
      )
    ])
    error_message = "must be between 0 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.memorydb_clusters : (
        v.num_shards == null || (v.num_shards >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.memorydb_clusters : (
        v.snapshot_retention_limit == null || (v.snapshot_retention_limit >= 0 && v.snapshot_retention_limit <= 35)
      )
    ])
    error_message = "must be between 0 and 35"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

