resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group
  location = var.location_resource_group
  tags     = var.tags_resource_group
  
}

