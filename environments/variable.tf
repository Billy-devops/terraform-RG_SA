variable "rg1" {
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
  validation {
    condition = alltrue([
      for rg in var.rg1 :
      contains(["westus2", "centralindia"], rg.location)
    ])
    error_message = "Only westus2 and centralindia are allowed locations!"
  }
}
variable "prefix" {
  type = string
}

variable "stg1" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))

  validation {
    condition = alltrue([
      for s in values(var.stg1) :
      contains(["westus2", "centralindia"], s.location)
    ])
    error_message = "Only westus2 and centralindia allowed"
  }
}
