provider "azurerm" {
  features {}
}

# Define Terraform backend configuration
terraform {
  backend "azurerm" {                             # Use AzureRM backend for storing Terraform state
    resource_group_name = "Terraform-POC"                 # Azure Resource Group where Terraform state is stored
    storage_account_name = "terraformpocdev01"   # Name of the Azure Storage Account for Terraform state
    container_name = "tfstate"                  # Name of the Azure Storage Container for Terraform state
    key = "terraform.tfstate"                     # Key or path to the Terraform state file within the container
  }
}

module "RG" {
  source                = "./modules/azurerm_resource_group"
  count                 = var.create_resource_group ? 1 : 0
  resource_group_name   = var.resource_group_name
  location              = var.location
  create_resource_group = var.create_resource_group
}

module "vnet_subnet" {
  source = "./modules/azurerm_vnet_subnet"
  virtual_network_name = var.virtual_network_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  subnet_name           = var.subnet_name
  address_space         = var.address_space
  address_prefixes      = var.address_prefixes
}