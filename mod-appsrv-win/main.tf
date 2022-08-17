terraform {
  required_providers {
    azurerm = "= 3.8.0"
  }
}

provider "azurerm" {
    features {}
}

variable "rg_name" {
  type        = string
  description = "rg name"
  default = "lc_test_rg_02"
}

variable "location" {
  type        = string
  description = "rg name"
  default = "eastus2"
}


resource "azurerm_resource_group" "this" {
    name = var.rg_name
    location = var.location
    tags = {purpose = "Testing"}
}
