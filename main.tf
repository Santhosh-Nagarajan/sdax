resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_id
  location                 = var.location
  account_tier             = var.account_tier_type
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "storage_container_name" {
  name                  = "${var.storage_account_name}-storage_container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "storage_blob_name" {
  name                   = "${var.storage_account_name}-storage_blob"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container_name.name
  type                   = "Block"
  source                 = "some-local-file.zip"

}
