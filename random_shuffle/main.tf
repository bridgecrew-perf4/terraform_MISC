resource "random_shuffle" "my_numbers" {
  input        = ["one", "two", "three", "four"]
}

output "my_numbers" {
  value = random_shuffle.my_numbers.result
}