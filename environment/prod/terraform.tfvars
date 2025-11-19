rgs = {
  rg = {
    name       = "rg-aura"
    location   = "centralindia"
    managed_by = "Shubham"
    tags = {
      env     = "dev"
      owner   = "Shubham"
      project = "Terraform"
    }
  }
}


networks = {
  vnet = {
    name                = "aura-network"
    resource_group_name = "rg-aura"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
    tags = {
      env     = "dev"
      owner   = "Shubham"
      project = "Terraform"
    }
    subnet = [{
      name             = "frontend-subnet"
      address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

public_ips = {
  pip1 = {
    name                = "pip-aura-01"
    allocation_method   = "Static"
    sku                 = "Standard"
    resource_group_name = "rg-aura"
    location            = "centralindia"
  }

  pip2 = {
    name                = "pip-aura-02"
    allocation_method   = "Static"
    sku                 = "Standard"
    resource_group_name = "rg-aura"
    location            = "centralindia"
  }
}

key_vaults = {
  kv1 = {
    name                       = "kv-aura-dev-01"
    location                   = "eastus"
    resource_group_name        = "rg-aura-dev"
    sku_name                   = "standard"
    purge_protection_enabled   = false
    soft_delete_retention_days = 7
    tags = {
      env = "dev"
    }
  }

  kv2 = {
    name                       = "kv-aura-dev-02"
    location                   = "eastus"
    resource_group_name        = "rg-aura-dev"
    sku_name                   = "standard"
    purge_protection_enabled   = false
    soft_delete_retention_days = 7
    tags = {
      env = "dev"
    }
  }
}
