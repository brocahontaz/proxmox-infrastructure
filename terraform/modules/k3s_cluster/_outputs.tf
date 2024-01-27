output "node_user_pwd" {
  value     = random_password.node_user_pwd.result
  sensitive = true
}

output "nodes" {
  description = "Node names and IPs"
  value = [
    for node in proxmox_virtual_environment_vm.node :
    {
      name = node.name
      ip   = node.initialization[0].ip_config[0].ipv4[0].address
    }
  ]
}
