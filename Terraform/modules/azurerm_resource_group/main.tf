resource "azurerm_resource_group" "main" {
  name        = var.resource_group_name
  location    = var.location
}

# resource "azurerm_management_lock" "RG" {
#   name       = "resource-group-level"
#   scope      = azurerm_resource_group.main.id
#   lock_level = "ReadOnly"
#   notes      = "This Resource Group is Read-Only"
# }