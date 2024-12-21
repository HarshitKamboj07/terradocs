module "storage_account" {
  source = "../../azure-storage-module"

  storage_account_name = "prodstorageaccount"
  resource_group_name = "prod-rg"
  location            = "eastus"
  additional_tags     = {
    project = "prod-project"
  }
}
