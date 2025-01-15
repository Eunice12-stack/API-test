locals {
  current_subscription_name = "adrian"
  subscriptions = {
    adrian = {
      subscription_id      = "3b29ce2e-7398-4546-b304-760b3b587a1f"
      storage_account_name = "aglterraformstate"
      key_vault_name       = "agl-config-kv"
      acr_name             = "aglacr"

    }
  }
  current    = local.subscriptions[local.current_subscription_name]
  location   = "Australia East"
  create_all = 1
}

provider "azurerm" {
  features {}
  subscription_id = local.current.subscription_id
}

provider "http" {}


# Resource: Resource Group
resource "azurerm_resource_group" "example" {
  name     = "example-rg-resources"
  location = "Australia East"
}