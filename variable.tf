variable "resource_group_id" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "Resource Location in Azure"
}

variable "storage_account_name" {
  type        = string
  description = "Storage A/C name in Azure"
}


variable "account_tier_type" {
  type        = string
  description = "Account Tier type in Azure"
}

variable "account_replication_type" {
  type        = string
  description = "Account replication type in Azure"
}

variable "container_access_type" {
  type        = string
  description = "Access Type in Azure"
}

variable "subscription_id" {
  type    = string
  default = "Subscription ID In Azure"
}

variable "client_id" {
  type    = string
  default = "Client ID In Azure"
}

variable "client_secret" {
  type    = string
  default = "Client secret In Azure"
}

variable "tenant_id" {
  type    = string
  default = "Tenant ID In Azure"
}
