variable "proxmox_endpoint" {
  type = string
  description = "The Proxmox endpoint"
}

variable "proxmox_username" {
  type = string
  description = "The Proxmox user used to make API requests"
}

variable "proxmox_api_token" {
  type = string
  description = "The token used to authenticate the user"
}
