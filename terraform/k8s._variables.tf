variable "k8s_cluster_name" {
  type        = string
  description = "The name of the cluster"
}

variable "k8s_node_count" {
  type        = number
  description = "The number of K3S node VMs"
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

variable "k8s_tags" {
  type        = list(string)
  description = "Tags to set on the nodes"
  default     = [ "k8s", "terraform", "ubuntu" ]
}

variable "k8s_clone_id" {
  type        = number
  description = "The id of the template to clone"
  default     = 9000
}

variable "k8s_host_node" {
  type        = string
  description = "The hostnode to provision the nodes on"
}

variable "k8s_username" {
  type        = string
  description = "The username to create in the nodes"
}

variable "k8s_tls_key" {
  type = string
  description = "The TLS key to inject as authorized in the nodes for SSH capabilities"
}

variable "k8s_zigbee_usb_id" {
  type        = string
  description = "The id of a Zigbee USB device"
  default     = ""
}
