variable "azurerm_resource_group" {
  description = "The name of the resource group in which the resources will be created."
}
variable "location_resource_group" {
  description = "The location in which the resources will be created."
}

variable "storage_name" {
  
}
variable "account_tier" {
  
}

variable "account_replication_type" {
  
}

variable "sql_version" {
  type = string
}
variable "sql_name" {
  type = string
}
variable "dbname" {
  type = string
}

variable "administrator_login" {
  
}

# variable "administrator_login_password" {
  
# }