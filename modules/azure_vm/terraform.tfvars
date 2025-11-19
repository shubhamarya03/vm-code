vms = {

vm1 = {
    vm_name = "frontend-vm"
rg_name = "rg-aura"
location = "centralindia"
vnet_name  = "aura-vnet-01"
subnet_name = "frontend-subnet"
pip_name = "aura-pip-01"
nic_name ="nic-frontend-vm-01"
size = "standard"
kv_name = "kv-aura"
  source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
}

vm2 = {
    vm_name = "backend-vm"
rg_name = "rg-aura"
location = "centralindia"
vnet_name  = "aura-vnet-01"
subnet_name = "backend-subnet"
pip_name = "aura-pip-02"
nic_name ="nic-frontend-vm-02"
size = "standard"

  source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
}
}