
# Output "stg_detail"{
#   value = module.azurerm.stg.stg_detail
# }
output "final_network" {
  value = {
    rg  = module.azurerm_rg.rg_details
    stg = module.azurerm_stg.stg_details
  }
}
