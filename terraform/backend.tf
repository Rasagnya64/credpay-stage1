terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccRG"
    storage_account_name = "credpayprojectsa1"
    container_name       = "statefile"
    key                  = "credpay.terraform.tfstate"
  }
}