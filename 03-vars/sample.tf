variable "fruits" {
  default = "apple"
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
    stock = {
      watermelon = 100
      orange = 200
    }

  }
}

output "fruit_with_stock" {
  value = var.fruit_with_stock["stock"]
}

# Map ,Map Of Variable
variable "fruit_with_stock_price" {
  default = {
    apple = {
      stock = 100
      price = 3
    }

    mango = {
      stock = 200
      price = 2
    }
  }
}

output "fruit_with_stock_price" {
  value = var.fruit_with_stock_price["apple"].stock
}

output "fruit_with_1" {
  value = var.fruit_with_stock_price["banana"].price
}