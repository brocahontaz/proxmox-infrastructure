module "nodes" {
  source = "../vm"
  
  count = var.node_count

  name = "${var.cluster_name}-${count.index}"
  tags = var.tags

  host_node = var.host_node
  clone_id  = var.clone_id

  cpu_cores = var.cpu_cores
  memory    = var.memory
  
  username = var.username
  tls_key  = var.tls_key

  generate_password = false
  password          = random_password.user_pwd.result

  providers = {
    proxmox = proxmox
  }
}

resource "random_password" "user_pwd" {
  length           = 16
  override_special = "_%@"
  special          = true
}
