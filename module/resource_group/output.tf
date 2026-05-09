output "rg_details" {
  value = {
    for k, v in azurerm_resource_group.rg0 : # jitne bhi resource groups bane hain (for_each se),un sab pe loop chala
    k => { # jo key pehle thi, wahi wapas use karo”,“bhai jo original naam (rg11, rg12) tha, wahi rehne de”
      name     = v.name
      location = v.location
      id       = v.id
    }
  }
}

