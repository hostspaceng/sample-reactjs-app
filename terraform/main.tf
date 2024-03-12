provider "azurerm" {
  skip_provider_registration = "true"
  features {}
  # subscription_id = var.subscription_id
  # tenant_id       = var.tenant_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
}

resource "azurerm_resource_group" "iog_rg" {
  name     = "iog-resource-group"
  location = "westus"
}

resource "azurerm_resource_group" "acr_rg" {
  name     = "iog-acr-rg" 
  location = "westus"   
}

resource "azurerm_container_registry" "acr" {
  name                = "iogrepo" 
  resource_group_name = azurerm_resource_group.acr_rg.name 
  location            = azurerm_resource_group.acr_rg.location 
  sku                 = "Basic" 
  admin_enabled       = true 
}
