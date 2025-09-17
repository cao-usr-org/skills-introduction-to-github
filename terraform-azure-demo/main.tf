provider "azurerm" {
  features {}
  subscription_id = "eb638095-1683-4289-bdc3-cffc016329d8"
}

resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

resource "azurerm_resource_group" "example" {
  name     = "rg-it-cc-tf-1"
  location = "Canada Central"
  tags = {
    Project     = "IT-TF"
    Environment = "Sandbox"
    Owner       = "Amir"
  }
}
resource "azurerm_storage_account" "example" {
  name                     = "examplestoracct${random_integer.suffix.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}