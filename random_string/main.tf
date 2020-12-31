resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}

output "resource_code" {
  value = random_string.resource_code.result
}