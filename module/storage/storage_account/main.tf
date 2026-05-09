resource "azurerm_storage_account" "stg0" {
  for_each = var.stg1

  name = lower(replace("${each.value.name}${each.key}", "-", "")) #💡 WHY USE KIYA?
#👉 Azure storage account rules: lowercase only, unique hona chahiye , no special chars
#👉 isliye dynamic + safe naming ✔

  location = each.value.location

  resource_group_name = var.rg_map[each.value.resource_group_name].name
  
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = local.common_tags
}