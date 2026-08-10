variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}
variable "key_vault_resource_group_name" {
  description = "The name of the resource group where the Key Vault is located."
  type        = string
}
variable "postgres_fqdn" {
  description = "The fully qualified domain name (FQDN) of the PostgreSQL server."
  type        = string
}
variable "postgres_admin_username" {
  description = "The admin username for the PostgreSQL server."
  type        = string
}
variable "postgres_admin_password" {
  description = "The admin password for the PostgreSQL server."
  type        = string
}
variable "postgres_database_name" {
  description = "The name of the PostgreSQL database."
  type        = string
}