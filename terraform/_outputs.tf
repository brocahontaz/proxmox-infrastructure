output "k8s_info" {
  sensitive = true
  value = {
    node_user_pwd = module.k8s_cluster.node_user_pwd
    nodes = module.k8s_cluster.nodes
  }
}
