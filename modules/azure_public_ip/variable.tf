variable "public_ips" {
  type = map(object({
    name                = string
    allocation_method   = optional(string, "Static")
    sku                 = optional(string, "Standard")
    location            = string
    resource_group_name = string
    tags                = optional(map(string))
  }))
}
