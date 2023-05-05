resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = "myrg"
  location                 = "east us"
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
