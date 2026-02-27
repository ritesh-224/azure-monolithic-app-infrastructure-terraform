variable "mssql_server" {
  type = map(object({
  server_name                  = string
  rg_name                      = string
  location                     = string
  server_login_name            = string
  secret_name                  = string
  tags                         = optional(map(string))
  }))
}

variable "key_vault_id" {
  type = string
}