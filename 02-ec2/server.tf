resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0402859183bbbfa7d"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z084007432GC51JNSYQ6A"
  name    = "frontend-dev.kr7348202.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

# resource "aws_instance" "mongodb" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "mongodb"
#   }
# }
#
# resource "aws_instance" "catalogue" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "catalogue"
#   }
# }
#
# resource "aws_instance" "redis" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "redis"
#   }
# }
#
# resource "aws_instance" "user" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "user"
#   }
# }
#
# resource "aws_instance" "cart" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "cart"
#   }
# }
#
# resource "aws_instance" "mysql" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "mysql"
#   }
# }
#
# resource "aws_instance" "shipping" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "shipping"
#   }
# }
#
# resource "aws_instance" "rabbitmq" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "rabbitmq"
#   }
# }
#
# resource "aws_instance" "payment" {
#   ami           = "ami-0b4f379183e5706b9"
#   instance_type = "t3.micro"
#   vpc_security_group_ids = ["sg-0402859183bbbfa7d"]
#   tags = {
#     Name = "payment"
#   }
# }