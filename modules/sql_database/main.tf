resource "azurerm_sql_server" "sql" {
  name                         = var.sql_name
  resource_group_name          = var.azurerm_resource_group
  location                     = var.location_resource_group
  version                      = var.sql_version
  administrator_login          = var.administrator_login
  administrator_login_password = random_password.password-sql.result

}


resource "azurerm_storage_account" "my_sql_storage" {
  name                     = var.storage_name
  resource_group_name      = var.azurerm_resource_group
  location                 = var.location_resource_group
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}



resource "azurerm_sql_database" "database1" {
  name                = var.dbname
  resource_group_name = var.azurerm_resource_group
  location            = var.location_resource_group
  server_name         = azurerm_sql_server.sql.name


  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.my_sql_storage.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.my_sql_storage.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }
}

resource "random_password" "password-sql" {

  length           = 12
  number           = true
  lower            = true
  min_upper        = 1
  min_lower        = 1
  min_numeric      = 1
  min_special      = 1
  override_special = "!#$&"

}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vaultsql" {
  name                = var.key_vault_name
  location            = var.location_resource_group
  resource_group_name = var.azurerm_resource_group
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "premium"
  #soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "create",
      "get",
    ]

    secret_permissions = [
      "set",
      "get",
      "delete",
      "purge",
      "recover",
      "list"
    ]
  }
}

resource "azurerm_key_vault_secret" "key_vaultsql" {
  name         = "sql-admin"
  value        = random_password.password-sql.result
  key_vault_id = azurerm_key_vault.key_vaultsql.id
}