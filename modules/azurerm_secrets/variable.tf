variable "secrets" {
  description = "Map of secrets with their names and values"
  type = map(object({
    secret_key = string
  }))
}


variable "key_vault_id" {
  type = string
}