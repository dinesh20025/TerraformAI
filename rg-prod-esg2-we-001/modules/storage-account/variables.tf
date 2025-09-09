variable "sa_name" {
  description = "Storage account name"
  type        = string
  default     = null
}

variable "location" {
  description = "Specifies the supported Azure location to MySQL server resource"
  type        = string
}

variable "resource_group_name" {
  description = "name of the resource group to create the resource"
  type        = string
}

variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
}
variable "replication_type" {
  description = "Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account (Standard or Premium)."
  type        = string
  default     = "Standard"
}
variable "hns_enabled" {
  description = "Defines if hierarchical namespace is enabled for storage"
  type        = string
}
variable "public_access_enabled" {
  description = "Defines if storage accessible from public network"
  type        = string
}
variable "connector_id" {
  description = "Databricks connector id"
  type        = string
}
variable "tenant_id" {
  description = "tenant id"
  type        = string
}
