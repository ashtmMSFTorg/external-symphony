#Set the terraform required version, and Configure the Azure Provider.Use remote storage

# Configure the Azure Provider
terraform {
  required_version = ">= 1.6.2, < 2.0.0"
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "1.2.15"
    }
  }
}

provider "azurerm" {
  tenant_id       = coalesce(var.target_tenant_id, getenv("ARM_TENANT_ID"))
  subscription_id = coalesce(var.target_subscription_id, getenv("ARM_SUBSCRIPTION_ID"))
  use_oidc        = true

  features {}
}
