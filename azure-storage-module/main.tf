locals {
  environment = terraform.workspace
  storage_config = {
    dev = {
      account_tier             = "Standard"
      account_replication_type = "LRS"
      base_tags = {
        environment = "development"
      }
    }
    prod = {
      account_tier             = "Standard"
      account_replication_type = "GRS"
      base_tags = {
        environment = "production"
      }
    }
  }
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = local.storage_config[local.environment].account_tier
  account_replication_type = local.storage_config[local.environment].account_replication_type
  tags                     = merge(local.storage_config[local.environment].base_tags, var.additional_tags)
}
