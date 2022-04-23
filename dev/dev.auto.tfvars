# Variable for resource group
azurerm_resource_group  = "DEV-Terraform" # name for DEV RG
location_resource_group = "West Europe" # location for DEV RG

# Tags for resource group
tags_resource_group = {
  "environment" = "DEV"
  "creator"     = "Terraform"
  "type"        = "resource group"
}

# Tags for SQL 
tags_sql = {
  "environment" = "DEV"
  "location"    = "West Europe"
  "database"    = "SQL"
  
}

#Variable for app

storage_name             = "myappstorageadam2022dev"
account_tier             = "Standard"
account_replication_type = "LRS"

#Variable for app service plan
tier                     = "Standard"
size_service_plan        = "S1"
my_service_plan_name     = "Myserviceplan-Adam-dev"
my_app_service_name      = "Myappservice-adam-Adam2022dev"
dotnet_framework_version = "v4.0"
scm_type                 = "LocalGit"
name                     = "new-app-service-dev"

#Variable SQL server
sql_name    = "mssqlserver-dev-adam2022"
sql_version = "12.0"

#Variable for SQL database
type   = "SQLServer"
dbname = "database-adam-dev"

administrator_login = "mradministratordev"

# Variable for key vault
key_vault_name = "myterraformDEVkey"
key_vault_sku_name = "standard"
key_vault_secret_password = "SQLDEVadminpassword" #Password generate by function