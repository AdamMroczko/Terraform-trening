# Variable for resource group
azurerm_resource_group  = "PROD-Terraform" #name for PROD RG
location_resource_group = "West Europe" # location for PROD RG

tags_resource_group = {
  "environment" = "PROD"
  "creator"     = "Terraform"
  "type"        = "resource group"
}


#Variable app

storage_name             = "myappstorage33prod"
account_tier             = "Standard"
account_replication_type = "LRS"

tier                     = "Standard"
size_service_plan        = "S1"
my_service_plan_name     = "Myserviceplan-Adam-prod"
my_app_service_name      = "Myappservice-Adam2022-prod"
dotnet_framework_version = "v4.0"
scm_type                 = "LocalGit"

sql_name    = "mssqlserver2022-prod"
sql_version = "12.0"

type   = "SQLServer"
dbname = "database-adam-prod"

administrator_login = "mradministratorprod"

name = "new-app-service-prod"

