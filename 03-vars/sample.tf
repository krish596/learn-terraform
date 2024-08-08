variable "fruits" {
  default = "hello world"
}

output "fruits" {
  value = var.fruits
}