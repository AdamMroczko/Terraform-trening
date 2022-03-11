provider "azurerm" {
  version = "=2.5.0"
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "tfstate852375425"
    container_name       = "adotfstate"
    key                  = "key2"
    sas_token            = "sp=racwdli&st=2022-03-08T13:44:49Z&se=2023-03-08T21:44:49Z&spr=https&sv=2020-08-04&sr=c&sig=XUdgRGi1vVIPGMMC%2BsseTQ%2Fh1fFWg2e6RZGHyzkOQgM%3D"
  }
}

module "azure_rg_module" {
  source                  = "./modules/azure_rg"
  azurerm_resource_group  = var.azurerm_resource_group
  location_resource_group = var.location_resource_group
}

module "sql_database_module" {
  depends_on = [
    module.azure_rg_module
  ]
  source                   = "./modules/sql_database"
  storage_name             = var.storage_name
  location_resource_group  = var.location_resource_group
  azurerm_resource_group   = var.azurerm_resource_group
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  sql_name                 = var.sql_name
  sql_version              = var.sql_version
  administrator_login      = var.administrator_login
  dbname                   = var.dbname

}
module "app_service" {
  depends_on = [
    module.azure_rg_module, module.sql_database_module
  ]
  source                   = "./modules/app_service"
  name                     = var.my_service_plan_name
  location_resource_group  = var.location_resource_group
  azurerm_resource_group   = var.azurerm_resource_group
  tier                     = var.tier
  size_service_plan        = var.size_service_plan
  my_service_plan_name     = var.my_service_plan_name
  my_app_service_name      = var.my_app_service_name
  dotnet_framework_version = var.dotnet_framework_version
  scm_type                 = var.scm_type
  type                     = var.type
  dbname                   = var.dbname
}