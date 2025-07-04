data "azurerm_resource_group" "rg" {
  name = "Lokesh-RSG"
  #location = "Spain Central"
}

module "resource_group" {
  source = "./az_resource_group"
  resource_group_name = var.resource_group_name
  resource_group_name1 = var.resource_group_name1
  location = var.location
}


module "virtual_machine" {
  source = "./az_virtual_machine"
  depends_on = [ module.resource_group ]
  prefix =  var.prefix
  vm_size = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  location = var.location
  rg_name = var.resource_group_name
}
module "storage_account" {
  source = "./az_storage_account"
  rg_name = data.azurerm_resource_group.rg.name
  location = data.azurerm_resource_group.rg.location
}