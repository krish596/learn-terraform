variable "fruits" {
  default = "hello world"
}

output "fruits" {
  value = var.fruits
}

# List Variable
variable "fruit_with" {
  default = [
    "apple",
    "banana"
  ]

}

output "fruit_with" {
  value = var.fruit_with[1]
}

# Plain Variable
variable "fruit" {
  default = "kiwi"
}

output "fruit" {
  value = var.fruit
}

# Map Variable

variable "fruit_with_stock" {
  default = {
    watermelon = 100
    orange = 200
  }
}

output "fruit_with_stock" {
  value = var.fruit_with_stock["orange"].stock
}