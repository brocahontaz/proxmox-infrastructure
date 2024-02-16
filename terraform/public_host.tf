module "public_host" {
  source = "./modules/vm"

  name = "public-host"
  tags = var.public_host_tags

  host_node = var.public_host_host_node
  clone_id  = var.public_host_clone_id

  cpu_cores = var.public_host_cpu_cores
  memory    = var.public_host_memory
  
  username = var.public_host_username
  tls_key  = var.public_host_tls_key

  generate_password = false
  password          = random_password.public_host_user_pwd.result

  vlan_id = var.public_host_vlan_id

  providers = {
    proxmox = proxmox
  }
}

resource "random_password" "public_host_user_pwd" {
  length           = 16
  override_special = "_%@"
  special          = true
}
