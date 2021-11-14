

resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
}

resource "azurerm_subnet" "subnet01" {
  name                 = var.azurerm_subnet_name
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var. address_prefixes
}

resource "azurerm_subnet" "subnet02" {
  name                 = var.azurerm_subnet_name02
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var. address_prefixes02
}

resource "azurerm_subnet" "subnet03" {
  name                 = var.azurerm_subnet_name03
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var. address_prefixes03
}