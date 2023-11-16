variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  default     = "ApireservesFinal"
}

variable "location" {
  description = "Ubicación del grupo de recursos"
  default     = "eastus"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
