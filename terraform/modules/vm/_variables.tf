variable "name" {
  type        = string
  description = "The hostname of the VM"
}

variable "tags" {
  type        = list(string)
  description = "Tags to set on the VM"
  default     = []
}

variable "clone_id" {
  type        = number
  description = "The id of the template to clone"
  default     = 9000
}

variable "host_node" {
  type        = string
  description = "The hostnode to provision the VM on"
}

variable "cpu_cores" {
  type        = number
  description = "The number of CPU cores for the VM"
  default     = 1
}

variable "memory" {
  type        = number
  description = "The amount of RAM for the VM"
  default     = 4096
}

variable "username" {
  type        = string
  description = "The username to create in the VM"
}

variable "generate_password" {
  type        = bool
  description = "Whether to generate a pwd or use the provided"
  default     = true
}

variable "password" {
  type        = string
  description = "The password for the created user"
  default     = ""
}

variable "tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the VM for SSH capabilities"
}
