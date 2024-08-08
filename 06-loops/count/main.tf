# variable "components" {
#   default = [ "redis", "catalogue", "frontend", "mongodb" ]
# }
#
# resource "aws_instance" "instance" {
#
#   count = length(var.components)
#
#   ami  = "ami-0b4f379183e5706b9"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#
#   tags = {
# #     Name = var.components[count.index]
#     Name = element(var.components,count.index)
#   }
# }

variable "components" {
  default = {
    catalogue = { name = "catalogue-sg" }
    mongodb = { name = "mongodb-sg" }

  }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name        =  lookup(var.components, each.value["name"], null)

}