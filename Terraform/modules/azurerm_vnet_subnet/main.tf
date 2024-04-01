
resource "azurerm_virtual_network" "vnet_example" {
    name                = var.virtual_network_name
    location            = var.location
    resource_group_name = var.resource_group_name
    address_space       = var.address_space 

    depends_on          = [azurerm_resource_group.main]
}

resource "azurerm_subnet" "subnet_example" {
    name                 = var.subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = var.virtual_network_name
    address_prefixes     = var.address_prefixes

    depends_on           = [azurerm_virtual_network.vnet_example]
}