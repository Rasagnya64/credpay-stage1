locals {
  name_prefix = "credpays1"
  tags = {
    project    = "credpay"
    managed-by = "terraform"
  }
}
module "resourcegroup" {
  source   = "./modules/resourcegroup"
  name     = "rg-${local.name_prefix}"
  location = var.location
  tags     = local.tags
}
module "networking" {
  source                 = "./modules/networking"
  name_prefix            = local.name_prefix
  resource_group_name    = module.resourcegroup.name
  location               = module.resourcegroup.location
  tags                   = local.tags
  aks_subnet_prefix      = var.aks_subnet_prefix
  postgres_subnet_prefix = var.postgres_subnet_prefix
  vnet_address_space     = var.vnet_address_space
}
module "monitoring" {
  source              = "./modules/monitoring"
  name_prefix         = local.name_prefix
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  tags                = local.tags
  retention_days      = var.log_retention_days
}
module "postgres" {
  source              = "./modules/postgres"
  name_prefix         = local.name_prefix
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  tags                = local.tags
  admin_username      = var.postgres_admin_username
  database_name       = var.database_name
  postgres_version    = var.postgres_version
}
module "aks" {
  source                     = "./modules/aks"
  name_prefix                = local.name_prefix
  resource_group_name        = module.resourcegroup.name
  location                   = module.resourcegroup.location
  tags                       = local.tags
  node_count                 = var.node_count
  node_min_count             = var.node_min_count
  node_max_count             = var.node_max_count
  vm_size                    = var.vm_size
  log_analytics_workspace_id = module.monitoring.log_analytics_workspace_id
  aks_subnet_id              = module.networking.subnet_ids["aks"]
}
module "keyvault" {
  source                        = "./modules/keyvault"
  key_vault_resource_group_name = module.resourcegroup.name
  key_vault_name                = var.key_vault_name
  postgres_fqdn                 = module.postgres.fqdn
  postgres_database_name        = module.postgres.database_name
  postgres_admin_username       = module.postgres.admin_username
  postgres_admin_password       = module.postgres.admin_password
}