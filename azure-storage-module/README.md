# Azure Storage Account Module

This Terraform module provisions an Azure Storage Account with different configurations for development and production environments using Terraform workspaces.

## Usage

```hcl
module "storage_account" {
  source              = "./azure-storage-module"
  storage_account_name = "mystorageaccount"
  resource_group_name = "my-resource-group"
  location           = "eastus"
}
```

## Workspace Support
- `dev`: Uses LRS replication
- `prod`: Uses GRS replication

## Variables
- `storage_account_name`: Name of the storage account
- `resource_group_name`: Name of the resource group
- `location`: Azure region location (default: eastus)

## Outputs
- `storage_account_id`: ID of the storage account
- `storage_account_name`: Name of the storage account
- `primary_access_key`: Primary access key for the storage account
