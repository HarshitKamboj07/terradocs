variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region location"
  default     = "eastus"
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional tags for the storage account"
  default     = {}
}
