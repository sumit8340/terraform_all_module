resource "azurerm_resource_group" "myrg" {
  name     = var.azurerm_resource_group
  location = "east us"
}

resource "azurerm_virtual_network" "myvnet" {
  name                = var.virtual_network_name
  address_space       = [var.address_space]
  location            = "east us"
  resource_group_name = "myrg"

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.prefix
    }
  }
 depends_on = [ azurerm_resource_group.myrg ]
}
