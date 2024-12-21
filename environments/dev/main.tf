module "storage_account" {
  source = "../../azure-storage-module"

  storage_account_name = "devstorageaccount"
  resource_group_name = "dev-rg"
  location            = "eastus"
  additional_tags     = {
    project = "dev-project"
  }
}
