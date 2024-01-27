output "node_user_pwd" {
  value     = random_password.node_user_pwd.result
  sensitive = true
}
