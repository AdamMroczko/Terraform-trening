# Variable for resource group
azurerm_resource_group  = "PROD-Terraform" #name for PROD RG
location_resource_group = "West Europe" # location for PROD RG

# Tags for resource group
tags_resource_group = {
  "environment" = "PROD"
  "creator"     = "Terraform"
  "type"        = "resource group"
  
}
# Tags for SQL 
tags_sql = {
  "environment" = "PROD"
  "location"    = "West Europe"
  "database"    = "SQL"
  
}

#Variable for app

storage_name             = "myappstorage33prod"
account_tier             = "Standard"
account_replication_type = "LRS"

#Variable for app service plan
tier                     = "Standard"
size_service_plan        = "S1"
my_service_plan_name     = "Myserviceplan-Adam-prod"
my_app_service_name      = "Myappservice-Adam2022-prod"
dotnet_framework_version = "v4.0"
scm_type                 = "LocalGit"

#Variable SQL server
sql_name    = "mssqlserver2022-prod"
sql_version = "12.0"
name = "new-app-service-prod"

#Variable for SQL database
type   = "SQLServer"
dbname = "database-adam-prod"

administrator_login = "mradministratorprod"

# Variable for key vault
key_vault_name = "myterraformpPRODkey"