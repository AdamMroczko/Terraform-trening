
# Variable for resource group
variable "azurerm_resource_group" {
  description = "The name of the resource group in which the resources will be created."
}
variable "location_resource_group" {
  description = "The location in which the resources will be created."
}
# Tags for resource group
variable "tags_sql" {
  description = "Tags for SQL "
}

#Variable for app
variable "storage_name" {
}
variable "account_tier" {
}
variable "account_replication_type" {
}

#Variable SQL server
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
# Variable for key vault
variable "key_vault_name" {
  type = string
}
variable "key_vault_sku_name" {
  type = string
}
variable "key_vault_secret_password" {
 type = string
}