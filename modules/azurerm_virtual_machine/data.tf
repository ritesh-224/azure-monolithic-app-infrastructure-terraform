data "azurerm_subnet" "subnet" {
    for_each = var.vms
    name                 = each.value.subnet_name
    virtual_network_name = each.value.vnet_name
    resource_group_name  = each.value.rg_name
}

data "azurerm_key_vault_secret" "admin_passwords" {
  for_each     = var.vms
  name         = each.value.secret_name 
  key_vault_id = var.key_vault_id        
}