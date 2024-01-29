variable "svc_host_cpu_cores" {
  type        = number
  description = "The number of CPU cores per node"
  default     = 1
}

variable "svc_host_memory" {
  type        = number
  description = "The RAM per node"
  default     = 4096
}

variable "svc_host_tags" {
  type        = list(string)
  description = "Tags to set on the nodes"
  default     = [ "svc_host", "terraform", "ubuntu" ]
}

variable "svc_host_clone_id" {
  type        = number
  description = "The id of the template to clone"
  default     = 9000
}

variable "svc_host_host_node" {
  type        = string
  description = "The hostnode to provision the nodes on"
}

variable "svc_host_username" {
  type        = string
  description = "The username to create in the nodes"
}

variable "svc_host_tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the nodes for SSH capabilities"
}
