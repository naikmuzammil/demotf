terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "demostoragefortf"
    container_name = "tfbackend"
    resource_group_name = "demo"
    key = "j.tfstate"
    client_id = "7aed8c71-64d2-458f-880d-ab42b013656b"
    client_secret = "-6E8Q~RDIkcLwtzjOHXYnrTqpS6cWS~cTKJuEb7v"
    tenant_id = "ad55ce1e-ad0d-4f6e-84fd-8decc8e3ecca"
    subscription_id = "1a855bb5-9604-4acc-88dc-bc6e24ad8a50"

  }
}

provider "azurerm" {
  features {}
  client_id = "7aed8c71-64d2-458f-880d-ab42b013656b"
  client_secret = "-6E8Q~RDIkcLwtzjOHXYnrTqpS6cWS~cTKJuEb7v"
  tenant_id = "ad55ce1e-ad0d-4f6e-84fd-8decc8e3ecca"
  subscription_id = "1a855bb5-9604-4acc-88dc-bc6e24ad8a50"
}
resource "azurerm_resource_group" "rg" {
  name = "jenkinsRGfromTF"
  location = "eastus"
}
