resource "aws_memorydb_cluster" "memorydb_clusters" {
  for_each = var.memorydb_clusters

  acl_name                   = each.value.acl_name
  node_type                  = each.value.node_type
  tags                       = each.value.tags
  subnet_group_name          = each.value.subnet_group_name
  sns_topic_arn              = each.value.sns_topic_arn
  snapshot_window            = each.value.snapshot_window
  snapshot_retention_limit   = each.value.snapshot_retention_limit
  snapshot_name              = each.value.snapshot_name
  snapshot_arns              = each.value.snapshot_arns
  security_group_ids         = each.value.security_group_ids
  region                     = each.value.region
  port                       = each.value.port
  parameter_group_name       = each.value.parameter_group_name
  num_shards                 = each.value.num_shards
  num_replicas_per_shard     = each.value.num_replicas_per_shard
  network_type               = each.value.network_type
  name_prefix                = each.value.name_prefix
  name                       = each.value.name
  multi_region_cluster_name  = each.value.multi_region_cluster_name
  maintenance_window         = each.value.maintenance_window
  kms_key_arn                = each.value.kms_key_arn
  ip_discovery               = each.value.ip_discovery
  final_snapshot_name        = each.value.final_snapshot_name
  engine_version             = each.value.engine_version
  engine                     = each.value.engine
  description                = each.value.description
  data_tiering               = each.value.data_tiering
  auto_minor_version_upgrade = each.value.auto_minor_version_upgrade
  tags_all                   = each.value.tags_all
  tls_enabled                = each.value.tls_enabled
}

