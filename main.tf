terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "remote" {
    organization = "RSKTest2021"

    workspaces {
      name = "github-actions-test1"
    }
  }
}

provider "azurerm"{
    features{}
}

resource "azurerm_resource_group" "rg"{
    name     = "myTFResourceGroup"
    location = "WestEurope"
    tags = {
        Environment = "Terraform Getting Started"
        Team = "DevOps"
    }
}
