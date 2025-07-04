resource "azurerm_storage_account" "st" {
  name = "demojatin1232432"
  resource_group_name = var.rg_name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
