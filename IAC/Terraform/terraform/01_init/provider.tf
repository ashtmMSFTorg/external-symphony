/*
initialize the Azure environment. No remote storage, only performed once.
*/

#Set the terraform required version, and Configure the Azure Provider
terraform {
  required_version = ">= 1.6.2, < 2.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  tenant_id       = coalesce(var.target_tenant_id, env("ARM_TENANT_ID"))
  subscription_id = coalesce(var.target_subscription_id, env("ARM_SUBSCRIPTION_ID"))
  use_oidc        = true

  features {}
}
