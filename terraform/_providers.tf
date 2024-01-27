terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.45.1"
    }
  }
}

provider "proxmox" {
  endpoint  = var.proxmox_endpoint
  username  = var.proxmox_username
  api_token = var.proxmox_api_token

  insecure = true

  ssh {
    agent     = true
    username  = var.proxmox_username
  }
}
