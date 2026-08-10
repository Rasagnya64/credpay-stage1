output "resource_group_name" {
  description = "The name of the resource group."
  value       = module.resourcegroup.name
}
output "vnet_id" {
  description = "The ID of the virtual network."
  value       = module.networking.vnet_id
}
output "subnet_ids" {
  description = "The IDs of the subnets."
  value       = module.networking.subnet_ids
}
output "aks_cluster_name" {
  description = "The name of the AKS cluster."
  value       = module.aks.cluster_name
}
output "aks_resource_group_name" {
  description = "The name of the AKS resource group."
  value       = module.resourcegroup.name
}
output "aks_kubelet_identity_object_id" {
  description = "Object ID of the AKS kubelet (node) managed identity."
  value       = module.aks.kubelet_identity_object_id
}
output "aks_oidc_issuer_url" {
  description = "OIDC issuer URL (needed for workload identity federation)."
  value       = module.aks.oidc_issuer_url
}
output "aks_node_resource_group" {
  description = "Auto-generated node resource group (MC_...)."
  value       = module.aks.node_resource_group
}
output "get_credentials_command" {
  description = "Convenience command to fetch kubeconfig."
  value       = "az aks get-credentials --resource-group ${module.resourcegroup.name} --name ${module.aks.cluster_name} --overwrite-existing"
}
output "postgres_server_name" {
  description = "The name of the PostgreSQL server."
  value       = module.postgres.server_name
}
output "postgres_fqdn" {
  description = "The fully qualified domain name of the PostgreSQL server."
  value       = module.postgres.fqdn
}
output "postgres_database_name" {
  description = "The name of the PostgreSQL database."
  value       = module.postgres.database_name
}
output "postgres_admin_username" {
  description = "The admin username for the PostgreSQL server."
  value       = module.postgres.admin_username
}
output "postgres_admin_password" {
  description = "The admin password for the PostgreSQL server."
  value       = module.postgres.admin_password
  sensitive   = true
}
output "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics workspace."
  value       = module.monitoring.workspace_id
}
output "key_vault_name" {
  description = "The name of the Key Vault."
  value       = module.keyvault.key_vault_name
}