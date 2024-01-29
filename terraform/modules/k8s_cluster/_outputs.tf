output "nodes" {
  description = "Node names and IPs"
  value = [
    for node in module.nodes :
      node.vm
  ]
}
