output "node_user_pwd" {
  value     = module.k3s_cluster.node_user_pwd
  sensitive = true
}
