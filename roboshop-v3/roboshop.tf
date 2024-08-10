variable "zone_id" {
  default = "Z084007432GC51JNSYQ6A"
}

variable "ami" {
  default           = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "security_group" {
  default = ["sg-0402859183bbbfa7d"]
}

variable "components" {

  default = {
    frontend = "{ name = frontend-dev }"
    mongodb = "{ name = mongodb-dev }"
    catalogue = "{ name = catalogue-dev }"
    redis = "{ name = redis-dev }"
    user = "{ name = user-dev }"
    cart = "{ name = cart-dev }"
    mysql = "{ name = mysql-dev }"
    shipping = "{ name = shipping-dev }"
    rabbitmq = "{ name = rabbitmq-dev }"
    payment = "{ name = payment-dev }"
  }



}

resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = each.key
  }
}



resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(var.components, each.key, null)}.kr7348202.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}

output "instances" {
  value = aws_instance.instance
}