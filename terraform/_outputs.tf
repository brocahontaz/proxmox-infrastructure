output "k8s_info" {
  sensitive = true
  value = module.k8s_cluster.nodes
}
