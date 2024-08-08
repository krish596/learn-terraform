variable "fruits" {
  default = [ "apple", "mango" ]
}

output "fruits" {
#   value = var.fruits[2]
  value = element(var.fruits, 2)

}

variable "fruit_with_stock" {
  default = [ "apple", "banana", "mango" ]
}

output "fruit_with_stock" {
  value = try(var.fruit_with_stock, 3)
}