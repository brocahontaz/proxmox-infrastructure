variable "k3s_cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "k3s_node_count" {
  type        = number
  description = "The number of K3S node VMs"
  default     = 0
}

variable "k3s_cpu_cores" {
  type        = number
  description = "The number of CPU cores per node"
  default     = 1
}

variable "k3s_memory" {
  type        = number
  description = "The RAM per node"
  default     = 4096
}

variable "k3s_tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the nodes for SSH capabilities"
}
