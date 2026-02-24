provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-secure-storage-demo"
  location = "East US"
}

resource "azurerm_storage_account" "securestorage" {
  name                     = "stsecuredemo${random_integer.rand.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

public_network_access_enabled = false
  min_tls_version          = "TLS1_2"

  tags = {
    environment = "security-lab"
    owner       = "cloud-security"
  }
}

resource "random_integer" "rand" {
  min = 10000
  max = 99999
}
