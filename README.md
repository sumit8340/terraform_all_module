# module "virtual_network" {
#  source = "github.com/sumit8340/terraform_all_module.git//vnet"
#  virtual_network_name = "myvnet"
#  address_space        = "10.0.0.0/16"
#  subnets = [
#    {
#      name   = "default"
#      prefix = "10.0.1.0/24"
#    }
#   ]
# }
# module "virtual_machine" {
#  source = "github.com/sumit8340/terraform_all_module.git//vm"
#  vm_size             = "Standard_D2_v2"
#  virtual_network_name = "myvnet"
#  subnet_name          = "default"
#  admin_username       = "adminuser"
#  admin_password       = "P@ssw0rd1234!"
#  os_image = {
#    publisher = "Canonical"
#    offer     = "UbuntuServer"
#    sku       = "18.04-LTS"
#    version   = "latest"
#  }
#  depends_on = [module.virtual_network]
# }
# module "storage_account" {
# source                  =  "github.com/sumit8340/terraform_all_module.git//storage"
#  storage_account_name    = "mysac05052023"
#  account_tier            = "Standard"
#  account_replication_type = "LRS"
#  depends_on = [module.virtual_network]
# }


