terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    storage_account_name = "stterraformaeastus"
    resource_group_name  = "rg-terraform-eastus"
    key                  = "tf-interview"
  }

  required_providers {
    azurerm = {
      source = "hashicorp/terraform"
    }
  }
}

provider "azurerm" {
  features {}
}
