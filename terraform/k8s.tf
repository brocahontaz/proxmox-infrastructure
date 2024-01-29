module "k8s_cluster" {
  source = "./modules/k8s_cluster"

  node_count   = var.k8s_node_count

  cluster_name = var.k8s_cluster_name
  tags         = var.k8s_tags

  host_node = var.k8s_host_node
  clone_id  = var.k8s_clone_id

  cpu_cores = var.k8s_cpu_cores
  memory    = var.k8s_memory

  username = var.k8s_username
  tls_key  = var.k8s_tls_key
  
  providers = {
    proxmox = proxmox
  }
}
