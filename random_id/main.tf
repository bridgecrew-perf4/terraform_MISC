resource "random_id" "my_id" {
  byte_length = 8
}

# full object
output "my_id" {
    value = random_id.my_id
}

output "random_id" {
    value = random_id.my_id.id
}

