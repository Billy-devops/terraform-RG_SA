resource "azurerm_resource_group" "rg0" {
    for_each = var.rg1
  name     = lower("${var.prefix}-${each.value.name}-${each.key}")
  location = each.value.location

  tags = merge( # default tags + user tags ko combine karne ke liye
    {
      environment = lookup(each.value.tags, "env", "dev")  #
      # managed_by  = "terraform"                            # Default tags (system ke)
      # project     = var.prefix                             # 👉 ye logic har resource me repeat hoga ❌
    },
    local.common_tags,
    each.value.tags # User tags (tfvars se)
  )
  lifecycle {

    # 🔒 RG delete hone se bachao
    prevent_destroy = true

    # 🔁 Name change ho to pehle new create kare
    create_before_destroy = true

    # 🏷️ Tags change ignore (optional)
    ignore_changes = [
      tags
    ]
  }
# “I used lifecycle block to prevent accidental deletion of critical Azure Resource Groups and to ensure safe infrastructure updates.”
}