
## RESOURCE GROUP
resource_group_name = "TestDeployment001"
locations           = "centralindia"


## VNET - SUBNET

rg_Name            = "Demo-Test"
location           = "eastus2"
vnet_Name          = "vnet-terraform-modulesdev-eus2"
vnet_Address       = "178.29.192.0/20"
subnet_NameList    = ["snet01_eus2", "snet02_eus2", "snet03_eus2"]
subnet_AddressList = ["178.29.192.0/26", "178.29.192.64/26", "178.29.192.128/26"]


### Virtual Machine Deployment

virtual_machine_Usr    = "virtual-machine-user"
virtual_machine_Passwd = "virtual-machine-password"
vm_pip                 = "public_ip_win"
pip_allocation         = "Dynamic"
vm_nic                 = "win_vm_nic"
ip_configuration       = "ip_config"
vm_name                = "win-terra-vm"
vm_size                = "Standard_B2s"
vm_username            = "admin0123"
vm_password            = "Admin0123password@"
vm_image_publisher     = "MicrosoftWindowsServer"
vm_image_offer         = "WindowsServer"
vm_image_sku           = "2016-Datacenter"
vm_image_version       = "latest"
vm_os_disk_strg_type   = "Standard_LRS"
vm_os_disk_caching     = "ReadWrite"


