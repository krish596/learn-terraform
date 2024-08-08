variable "components" {
  default = {
    catalogue = { name = "catalogue" }
    mongodb = { name = "mongodb" }

  }
}

resource "aws_instance" "instance" {

  for_each= var.components

  ami  = "ami-0b4f379183e5706b9"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0402859183bbbfa7d"]

  tags = {
    Name = lookup(var.components, each.value, null)


  }
}