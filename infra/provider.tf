terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-cp2-565076"
    storage_account_name = "sttf565076ec54ce"
    container_name       = "tfstate"
    key                  = "cp2-565076.tfstate"
  }
}

provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}
