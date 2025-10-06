module "Keyvault" {
  source             = "git::https://github.com/ModuleASDA/Key-Vault.git"
  key_vault_rg_name  = data.azurerm_resource_group.example.name
  key_vault_location = data.azurerm_resource_group.example.location
  key_vault_name     = "kv-01-terraform-practise"
  key_vault_sku_name = "standard"
}
