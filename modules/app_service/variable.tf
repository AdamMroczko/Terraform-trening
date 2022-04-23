#the name of the App Service
variable "name" {
  type = string
}
# Name of RG
variable "azurerm_resource_group" {
  description = "The name of the resource group in which the resources will be created."
}
#Location of RG
variable "location_resource_group" {
  description = "The location in which the resources will be created."
}

# Name of you app service plan
variable "my_service_plan_name" {
  type = string
}
variable "tier" {
  type = string
}
variable "size_service_plan" {
  type = string
}

variable "my_app_service_name" {
  type = string
}
variable "dotnet_framework_version" {
  type = string
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
