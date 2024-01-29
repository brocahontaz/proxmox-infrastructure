module "k8s_cluster" {
  source = "./modules/k8s_cluster"

  tls_key = var.k8s_tls_key

  cluster_name = var.k8s_cluster_name
  node_count   = var.k8s_node_count

  cpu_cores = var.k8s_cpu_cores
  memory    = var.k8s_memory

  providers = {
    proxmox = proxmox
  }
}
