resource "azurerm_app_service_plan" "my_service_plan" {
  name                = var.my_service_plan_name
  location            = var.location_resource_group
  resource_group_name = var.azurerm_resource_group

  sku {
    tier = var.tier
    size = var.size_service_plan
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.my_app_service_name
  location            = var.location_resource_group
  resource_group_name = var.azurerm_resource_group
  app_service_plan_id = azurerm_app_service_plan.my_service_plan.id

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
    scm_type                 = var.scm_type
  }

  #app_settings = {
  # "SOME_KEY" = "some-value"
  #}

  connection_string {
    name  = var.dbname
    type  = var.type
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}