variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "node_count" {
  type        = number
  description = "The number of K3S node VMs"
  default     = 0
}

variable "cpu_cores" {
  type        = number
  description = "The number of CPU cores per node"
  default     = 1
}

variable "memory" {
  type        = number
  description = "The RAM per node"
  default     = 4096
}

variable "tags" {
  type        = list(string)
  description = "Tags to set on the nodes"
  default     = []
}

variable "clone_id" {
  type        = number
  description = "The id of the template to clone"
  default     = 9000
}

variable "host_node" {
  type        = string
  description = "The hostnode to provision the nodes on"
}

variable "username" {
  type        = string
  description = "The username to create in the nodes"
}

variable "tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the nodes for SSH capabilities"
}
