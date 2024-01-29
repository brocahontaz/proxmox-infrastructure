data "tls_public_key" "ssh_key" {
  private_key_openssh = file("${var.tls_key}")
}
