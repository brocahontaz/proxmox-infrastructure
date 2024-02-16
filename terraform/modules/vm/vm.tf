resource "proxmox_virtual_environment_vm" "vm" {
  name        = var.name
  description = "Managed by Terraform"
  tags        = var.tags

  node_name = var.host_node

  agent {
    enabled = true
  }

  clone {
    vm_id        = var.clone_id
    full         = true
    datastore_id = "local-lvm"
    node_name    = var.host_node
  }

  cpu {
    architecture = "x86_64"
    cores        = var.cpu_cores
    sockets      = 1
  }

  memory {
    dedicated = var.memory
  }

  dynamic "network_device" {
    for_each = var.vlan_id != "" ? [1] : []

    content {
      vlan_id = var.vlan_id
    }
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = var.username
      password = !var.generate_password ? var.password : random_password.user_pwd[0].result
      keys     = [trimspace(data.tls_public_key.ssh_key.public_key_openssh)]
    }
  }

  keyboard_layout = "sv"

  dynamic "usb" {
    for_each = var.usb_id != "" ? [1] : []

    content {
      host = var.usb_id
    }
  }
}

resource "random_password" "user_pwd" {
  count = !var.generate_password ? 0 : 1

  length           = 16
  override_special = "_%@"
  special          = true
}
