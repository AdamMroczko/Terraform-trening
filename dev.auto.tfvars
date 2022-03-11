# Variable for resource group
azurerm_resource_group  = "DEV-Terraform"
location_resource_group = "West Europe"


#Variable app

storage_name             = "myappstoragedevadam2022"
account_tier             = "Standard"
account_replication_type = "LRS"

tier                     = "Standard"
size_service_plan        = "S1"
my_service_plan_name     = "Myserviceplan-dev-adam"
my_app_service_name      = "Myappserviceadam-dev-adam2022"
dotnet_framework_version = "v4.0"
scm_type                 = "LocalGit"

sql_name    = "mssqlserver-dev-adam2022"
sql_version = "12.0"

type   = "SQLServer"
dbname = "database-adam-dev"

administrator_login = "mradministrator"


name = "new-app-service-dev"

