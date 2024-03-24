terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "your-client-id"
  client_secret   = "your-client-secret"
  subscription_id = "your-subscription-id"
  tenant_id       = "your-tenant-id"
}

resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks_networking" {
  source              = "./aks-networking-module" # Path to your module directory
}