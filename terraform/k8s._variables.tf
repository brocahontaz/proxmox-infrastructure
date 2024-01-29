variable "k8s_cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "k8s_node_count" {
  type        = number
  description = "The number of k8s node VMs"
  default     = 0
}

variable "k8s_cpu_cores" {
  type        = number
  description = "The number of CPU cores per node"
  default     = 1
}

variable "k8s_memory" {
  type        = number
  description = "The RAM per node"
  default     = 4096
}

variable "k8s_tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the nodes for SSH capabilities"
}
