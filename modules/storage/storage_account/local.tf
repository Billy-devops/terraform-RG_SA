locals {
  common_tags = {
    managed_by = "terraform"
    project    = "meta-storage"
  }
}

# locals { ... } 👉 ye block ka naam hai
# local 👉 ye use karne ka keyword hai
# 👉 “locals block hota hai, use hamesha local.<name> se hota hai”