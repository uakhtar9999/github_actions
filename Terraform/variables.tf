variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
}

variable "location" {
  description = "Azure region where the Resource Group should be created"
}

variable "create_resource_group" {
  description = "Flag to determine whether to create the Resource Group"
  type        = bool
  default     = true
}

variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the virtual network"
}

variable "address_space" {
  type    = list(string)
  description = "Address space of Virtual network"
}
variable "subnet_name" {
  type        = string
  description = "(Required) The name of the virtual network"
}
variable "address_prefixes" {
  type    = list(string)
  description = "Address space of subnet"
}
