locals {
  common_tags = {
    managed_by = "terraform"
    project    = var.prefix
  }
}
# 👉 temporary variable (sirf Terraform ke andar use hota hai)
# 👉 reuse ke liye use hota hai