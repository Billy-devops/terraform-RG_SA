variable "rg1" {
  type = map(object({
    name     = string
    location = string
 tags     = optional(map(string), {})
  }))
    validation {
    condition = alltrue([
      for rg in var.rg1 : # 👉 rg Terraform ka Resource Group nahi hai |👉 ye sirf loop ka dummy variable name hai
      contains(["westus2", "centralindia"], rg.location) # har resource group ka location check ho raha hai
    ])
    error_message = "Only westus2 and centralindia are allowed locations!"
  }
}
variable "prefix" {
  type = string
}