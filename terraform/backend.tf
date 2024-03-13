# terraform {
#   backend "azurerm" {
#     resource_group_name  = "tfstate"
#     storage_account_name = "tfstateyyyy8"
#     container_name       = "tfstate"
#     key                  = "iog-terraform.tfstate"
#   }

#   required_version = ">= 0.14"
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  # required_version = ">= 0.14"
}