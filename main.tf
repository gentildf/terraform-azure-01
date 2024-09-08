provider "azurerm" {
    alias = "assinatura01"
    features {}
    subscription_id = var.subscription_id_01
}

provider "azurerm" {
    alias = "assinatura02"
    features {}
    subscription_id = var.subscription_id_02
}

resource "azurerm_resource_group" "rg" {
    provider = azurerm.assinatura01
    name = "example-resources"
    location = "East US"
}

resource "azurerm_resource_group" "grp_res" {
    provider = azurerm.assinatura02
    count = 4
    name = "resources-test-${count.index + 1}"
    location = "East US"
}   

locals {
  regions = ["East US", "West Europe", "Japan East"]
}

resource "azurerm_resource_group" "grp_reg_res" {
    provider = azurerm.assinatura01
    for_each = toset(local.regions)
    name     = "example-resources-${replace(each.key, " ", "-")}"
    location = each.value
}
