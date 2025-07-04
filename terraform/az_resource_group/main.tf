resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
  tags = { "env" = "dev" }
}

resource "azurerm_resource_group" "rg1" {
  name = var.resource_group_name1
  location = var.location
}
