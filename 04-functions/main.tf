variable "fruits" {
  default = [ "apple", "mango" ]
}

output "fruits" {
  value = var.fruits[2]

}