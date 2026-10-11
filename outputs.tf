output "memorydb_clusters_id" {
  description = "Map of id values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "memorydb_clusters_acl_name" {
  description = "Map of acl_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.acl_name if v.acl_name != null && length(v.acl_name) > 0 }
}
output "memorydb_clusters_arn" {
  description = "Map of arn values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "memorydb_clusters_auto_minor_version_upgrade" {
  description = "Map of auto_minor_version_upgrade values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.auto_minor_version_upgrade if v.auto_minor_version_upgrade != null }
}
output "memorydb_clusters_cluster_endpoint" {
  description = "Map of cluster_endpoint values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.cluster_endpoint if v.cluster_endpoint != null && length(v.cluster_endpoint) > 0 }
}
output "memorydb_clusters_data_tiering" {
  description = "Map of data_tiering values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.data_tiering if v.data_tiering != null }
}
output "memorydb_clusters_description" {
  description = "Map of description values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "memorydb_clusters_engine" {
  description = "Map of engine values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "memorydb_clusters_engine_patch_version" {
  description = "Map of engine_patch_version values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.engine_patch_version if v.engine_patch_version != null && length(v.engine_patch_version) > 0 }
}
output "memorydb_clusters_engine_version" {
  description = "Map of engine_version values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "memorydb_clusters_final_snapshot_name" {
  description = "Map of final_snapshot_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.final_snapshot_name if v.final_snapshot_name != null && length(v.final_snapshot_name) > 0 }
}
output "memorydb_clusters_ip_discovery" {
  description = "Map of ip_discovery values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.ip_discovery if v.ip_discovery != null && length(v.ip_discovery) > 0 }
}
output "memorydb_clusters_kms_key_arn" {
  description = "Map of kms_key_arn values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "memorydb_clusters_maintenance_window" {
  description = "Map of maintenance_window values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.maintenance_window if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "memorydb_clusters_multi_region_cluster_name" {
  description = "Map of multi_region_cluster_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.multi_region_cluster_name if v.multi_region_cluster_name != null && length(v.multi_region_cluster_name) > 0 }
}
output "memorydb_clusters_name" {
  description = "Map of name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "memorydb_clusters_name_prefix" {
  description = "Map of name_prefix values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "memorydb_clusters_network_type" {
  description = "Map of network_type values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "memorydb_clusters_node_type" {
  description = "Map of node_type values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "memorydb_clusters_num_replicas_per_shard" {
  description = "Map of num_replicas_per_shard values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.num_replicas_per_shard if v.num_replicas_per_shard != null }
}
output "memorydb_clusters_num_shards" {
  description = "Map of num_shards values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.num_shards if v.num_shards != null }
}
output "memorydb_clusters_parameter_group_name" {
  description = "Map of parameter_group_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.parameter_group_name if v.parameter_group_name != null && length(v.parameter_group_name) > 0 }
}
output "memorydb_clusters_port" {
  description = "Map of port values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.port if v.port != null }
}
output "memorydb_clusters_region" {
  description = "Map of region values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "memorydb_clusters_security_group_ids" {
  description = "Map of security_group_ids values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "memorydb_clusters_shards" {
  description = "Map of shards values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.shards if v.shards != null && length(v.shards) > 0 }
}
output "memorydb_clusters_snapshot_arns" {
  description = "Map of snapshot_arns values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.snapshot_arns if v.snapshot_arns != null && length(v.snapshot_arns) > 0 }
}
output "memorydb_clusters_snapshot_name" {
  description = "Map of snapshot_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.snapshot_name if v.snapshot_name != null && length(v.snapshot_name) > 0 }
}
output "memorydb_clusters_snapshot_retention_limit" {
  description = "Map of snapshot_retention_limit values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.snapshot_retention_limit if v.snapshot_retention_limit != null }
}
output "memorydb_clusters_snapshot_window" {
  description = "Map of snapshot_window values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.snapshot_window if v.snapshot_window != null && length(v.snapshot_window) > 0 }
}
output "memorydb_clusters_sns_topic_arn" {
  description = "Map of sns_topic_arn values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.sns_topic_arn if v.sns_topic_arn != null && length(v.sns_topic_arn) > 0 }
}
output "memorydb_clusters_subnet_group_name" {
  description = "Map of subnet_group_name values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.subnet_group_name if v.subnet_group_name != null && length(v.subnet_group_name) > 0 }
}
output "memorydb_clusters_tags" {
  description = "Map of tags values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "memorydb_clusters_tags_all" {
  description = "Map of tags_all values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "memorydb_clusters_tls_enabled" {
  description = "Map of tls_enabled values across all memorydb_clusters, keyed the same as var.memorydb_clusters"
  value       = { for k, v in aws_memorydb_cluster.memorydb_clusters : k => v.tls_enabled if v.tls_enabled != null }
}

