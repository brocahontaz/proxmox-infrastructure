resource "proxmox_virtual_environment_vm" "node" {
  count = var.node_count

  name        = "${var.cluster_name}-${count.index}"
  description = "Managed by Terraform"
  tags        = ["terraform", "ubuntu", "k8s"]

  node_name = "eldton"

  agent {
    enabled = true
  }

  clone {
    vm_id        = 9000
    full         = true
    datastore_id = "local-lvm"
    node_name    = "eldton"
  }

  cpu {
    architecture = "x86_64"
    cores        = var.cpu_cores
    sockets      = 1
  }

  memory {
    dedicated = var.memory
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = "fjall"
      password = random_password.node_user_pwd.result
      keys     = [trimspace(data.tls_public_key.ssh_key.public_key_openssh)]
    }
  }

  keyboard_layout = "sv"
}

resource "random_password" "node_user_pwd" {
  length           = 16
  override_special = "_%@"
  special          = true
}
