data "azurerm_resource_group" "example" {
  name = "Resource_Group_Terraform_03"
}

resource "azurerm_resource_group" "main" {
  name     = testing001
  location = "West Europe"
  #tags     = var.tags # Uncomment and define var.tags in variables.tf if you want to use tags
}