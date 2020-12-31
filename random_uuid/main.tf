resource "random_uuid" "my_uuid" { }

output "my_uuid" {
  value = random_uuid.my_uuid.result
}