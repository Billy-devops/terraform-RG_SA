rg1 = {
  rg11 = {
    name     = "amol"
    location = "westus2"
    tags = {
      env   = "dev"
      owner = "shivam1"
    }
  }
  rg12 = {
    name     = "shivam"
    location = "westus2"
    tags = {
      env   = "prod"
      owner = "shivam"
    }
  }
}


prefix = "meta"
stg1 = {
  stg11 = {
    name                = "stgamol"
    location            = "westus2"
    resource_group_name = "rg11" # 🔥 KEY use kar
  }

  stg12 = {
    name                = "stgshivam"
    location            = "westus2"
    resource_group_name = "rg12" # 🔥 KEY use kar
  }
}
