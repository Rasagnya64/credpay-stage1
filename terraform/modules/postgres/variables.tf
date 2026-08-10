variable "name_prefix" {
  description = "The prefix for the name of the Key Vault."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group where the Key Vault is located."
  type        = string
}
variable "location" {
  description = "The location of the Key Vault."
  type        = string
}
variable "admin_username" {
  description = "The admin username for the PostgreSQL server."
  type        = string
}
variable "database_name" {
  description = "The name of the PostgreSQL database."
  type        = string
}
variable "postgres_version" {
  description = "The version of PostgreSQL to use."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the Key Vault."
  type        = map(string)
  default     = {}
}
