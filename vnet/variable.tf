variable "azurerm_resource_group" {
  type = string
default = "myrg"
}
variable "virtual_network_name" {}
variable "address_space" {}
variable "subnets" {
  type = list(object({
    name   = string
    prefix = string
  }))
}
