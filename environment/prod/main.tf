module "azurerm_resource_group" {
    source = "../../modules/azure_resource_group"
    rgs = var.rgs  
}

module "network" {
  source   = "../../modules/azure_network"
  networks = var.networks
}

module "public_ips" {
    source = "../../modules/azure_public_ip"
    public_ips = var.public_ips
   
}

module "key_vaults" {
  source     = "../../modules/azure_key_vault"
  key_vaults = var.key_vaults
}

module "sql_server" {

  source          = "../../modules/azure_sql_server"
  sql_server_name = "sql-aura"
  rg_name         = "rg-aura"
  location        = "centralindia"
  admin_username  = "Admin"
  admin_password  = "Aura@123"
  tags            = {}
}

module "sql_db" {
  depends_on  = [module.sql_server]
  source      = "../../modules/azure_sql_db"
  sql_db_name = "sqldb-aura"
  server_id   = module.sql_server.server_id
  max_size_gb = "2"
  tags        = {}
}