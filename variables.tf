# Variable for resource group
variable "azurerm_resource_group" {
  description = "The name of the resource group in which the resources will be created."

}
variable "location_resource_group" {
  description = "The location in which the resources will be created."
}
variable "tags_resource_group" {
  description = "Tags for RG "
}

variable "tags_sql" {
  description = "Tags for SQL "
}
variable "storage_name" {

}
variable "account_tier" {

}

variable "account_replication_type" {

}
variable "sql_name" {
  type = string
}

variable "sql_version" {
  type = string
}

variable "administrator_login" {

}
variable "key_vault_name" {
  type = string
}

variable "my_service_plan_name" {
  type = string
}
variable "tier" {

}
variable "size_service_plan" {
  type = string
}


variable "my_app_service_name" {
  type = string
}

variable "dotnet_framework_version" {

}
variable "scm_type" {
  type = string
}
variable "dbname" {
  type = string
}
variable "type" {
  type = string
}
