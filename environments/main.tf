module "azurerm_rg" {
  source = "../module/resource_group"
  rg1    = var.rg1
  prefix = var.prefix
}
module "azurerm_stg" {
  depends_on = [module.azurerm_rg]
  source     = "../module/storage/storage_account"
  stg1       = var.stg1
  rg_map     = module.azurerm_rg.rg_details # 👉 tu RG module ka output storage module ko pass kar raha hai

}
