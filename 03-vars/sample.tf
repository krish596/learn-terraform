variable "fruits" {
  default = "hello world"
}

output "fruits" {
  value = var.fruits
}

# List Variable
variable "fruit_with" {
  default = [
    apple,
    banana
  ]

}