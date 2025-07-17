resource "azurerm_resource_group" "terrarg" {
  name     = "terrarg"
  location = "East US"
}
resource "azurerm_storage_account" "storage" {
  name                     = "terrastorageacc02"  # must be globally unique and lowercase
  resource_group_name      = "terrarg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
