terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG-02"
    storage_account_name = "saterraformstatefile001"
    container_name       = "tfstate"
    key                  = "terraformpractise.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

#dddd