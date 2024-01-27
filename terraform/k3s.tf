resource "proxmox_virtual_environment_vm" "test_node" {
  name        = "test-node"
  description = "Managed by Terraform"
  tags        = ["terraform", "ubuntu", "k3s"]

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
    cores        = 1
    sockets      = 1
  }

  memory {
    dedicated = 4096
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = "ubuntu"
      password = "ubuntu"
      keys     = []
    }
  }

  keyboard_layout = "sv"
}
