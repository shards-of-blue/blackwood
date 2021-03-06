#
## Terraform provider declarations
#

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.2.4"

  ## declare backend type; actual configuration is in backend.conf (generated by setup)
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

#
## load global configuration
#
module "conf" {
  source = "../conf"
}

locals {
  confmap = module.conf.values
}

