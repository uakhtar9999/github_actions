variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the virtual network"
}
variable "location" {
  description = "Azure region where the Resource Group should be created"
}
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
}
variable "address_space" {
  description = "Address space of Virtual network"
}
variable "subnet_name" {
  type        = string
  description = "(Required) The name of the virtual network"
}
variable "address_prefixes" {
  description = "Address space of subnet"
}
