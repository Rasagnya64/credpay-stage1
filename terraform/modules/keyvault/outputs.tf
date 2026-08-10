output "key_vault_name" {
  description = "The name of the Key Vault."
  value       = data.azurerm_key_vault.kv.name
}
