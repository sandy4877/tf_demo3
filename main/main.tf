provider "azurerm" {
    features {}   
}
resource "azurerm_resource_group" "rg" {
    name = var.rg_name
    location = var.location
    tags = var.tags
}

resource "azurerm_storage_account" "rg" {
  name                     = "sandystorage4877"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}