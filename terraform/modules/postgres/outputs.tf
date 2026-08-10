output "server_id" {
  description = "The ID of the PostgreSQL server."
  value       = azurerm_postgresql_flexible_server.pgs.id
}
output "server_name" {
  description = "The name of the PostgreSQL server."
  value       = azurerm_postgresql_flexible_server.pgs.name
}
output "fqdn" {
  description = "The fully qualified domain name of the PostgreSQL server."
  value       = azurerm_postgresql_flexible_server.pgs.fqdn
}
output "database_name" {
  description = "The name of the PostgreSQL database."
  value       = azurerm_postgresql_flexible_server_database.pgdb.name
}
output "admin_username" {
  description = "The admin username for the PostgreSQL server."
  value       = azurerm_postgresql_flexible_server.pgs.administrator_login
}
output "admin_password" {
  description = "The admin password for the PostgreSQL server."
  value       = random_password.admin.result
  sensitive   = true
}