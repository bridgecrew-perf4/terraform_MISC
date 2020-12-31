resource "random_password" "my_password" {
  length  = 12
  special = true
}

output "my_password" {
  value = random_password.my_password.result
}