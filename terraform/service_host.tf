module "service_host" {
  source = "./modules/vm"

  name = "service-host"
  tags = var.svc_host_tags

  host_node = var.svc_host_host_node
  clone_id  = var.svc_host_clone_id

  cpu_cores = var.svc_host_cpu_cores
  memory    = var.svc_host_memory
  
  username = var.svc_host_username
  tls_key  = var.svc_host_tls_key

  generate_password = false
  password          = random_password.svc_host_user_pwd.result

  providers = {
    proxmox = proxmox
  }
}

resource "random_password" "svc_host_user_pwd" {
  length           = 16
  override_special = "_%@"
  special          = true
}
