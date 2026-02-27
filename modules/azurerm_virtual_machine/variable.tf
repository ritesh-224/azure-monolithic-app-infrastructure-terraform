variable "vms" {
  type     = map(object({
    nic_name       = string
    vnet_name      = string
    rg_name        = string
    location       = string
    secret_name    = string
    subnet_name    = string
    vm_name        = string
    vm_size        = string
    admin_username = string
    disable_password_authentication = bool
    config_name    = string
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}

variable "key_vault_id" {
  type    = string
}
