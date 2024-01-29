output "user_pwd" {
  value     = !var.generate_password ? var.password : random_password.user_pwd[0].result
  sensitive = true
}

output "vm" {
  description = "VM name and IP"
  value = {
    name = proxmox_virtual_environment_vm.vm.name
    ip   = proxmox_virtual_environment_vm.vm.initialization[0].ip_config[0].ipv4[0].address
  }
}
