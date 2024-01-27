output "k3s_info" {
  sensitive = true
  value = {
    node_user_pwd = module.k3s_cluster.node_user_pwd
    nodes = module.k3s_cluster.nodes
  }
}
