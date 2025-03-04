# Terraform provider block

provider "azurerm" {
  features {}
}

# Define Terraform backend configuration

terraform {
  backend "azurerm" {                             # Use AzureRM backend for storing Terraform state
    resource_group_name = "Terraform-POC"         # Azure Resource Group where Terraform state is stored
    storage_account_name = "terraformpocdev01"    # Name of the Azure Storage Account for Terraform state
    container_name = "tfstate"                    # Name of the Azure Storage Container for Terraform state
    key = "terraform.tfstate"                     # Key or path to the Terraform state file within the container
  }
}



############# 1. RESOURCE GROUP Deployment Code #############

module "RG" {
  source                = "../Terraform/resource_group"
  resource_group_name   = var.resource_group_name
  locations             = var.locations
  create_resource_group = var.create_resource_group
}


# ############# 2. VNET & SUBNET Deployment Code #############

# module "vnet01" {
#   source             = "../Terraform/network"
#   vnet_Name          = var.vnet_Name
#   rg_Name            = var.rg_Name
#   location           = var.location
#   vnet_Address       = var.vnet_Address
#   subnet_NameList    = var.subnet_NameList
#   subnet_AddressList = var.subnet_AddressList
# }

# ######### 3. Azure Linux Virtual Machine deployment #########

# module "vm" {
#   depends_on           = [module.vnet01.subnet]
#   source               = "../Terraform/virtual_machine"
#   vm_pip               = var.vm_pip
#   rg_Name              = var.rg_Name
#   location             = var.location
#   pip_allocation       = var.pip_allocation
#   vm_nic               = var.vm_nic
#   ip_configuration     = var.ip_configuration
#   vm_name              = var.vm_name
#   vm_size              = var.vm_size
#   vm_username          = var.vm_username
#   vm_password          = var.vm_password
#   vm_image_publisher   = var.vm_image_publisher
#   vm_image_offer       = var.vm_image_offer
#   vm_image_sku         = var.vm_image_sku
#   vm_image_version     = var.vm_image_version
#   vm_os_disk_strg_type = var.vm_os_disk_strg_type
#   vm_os_disk_caching   = var.vm_os_disk_caching
#   vm_subnetid          = module.vnet01.subnet_Id[1]
# }

