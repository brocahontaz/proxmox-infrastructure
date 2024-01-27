module "k3s_cluster" {
  source = "./modules/k3s_cluster"

  tls_key = var.k3s_tls_key

  cluster_name = var.k3s_cluster_name
  node_count   = var.k3s_node_count

  cpu_cores = var.k3s_cpu_cores
  memory    = var.k3s_memory

  providers = {
    proxmox = proxmox
  }
}
