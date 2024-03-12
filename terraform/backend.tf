terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstateyyyy8"
    container_name       = "tfstate"
    key                  = "iog-terraform.tfstate"
  }

  required_version = ">= 0.14"
}
