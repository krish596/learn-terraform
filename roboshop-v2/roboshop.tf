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

resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = "frontend"
  }
}



resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev.kr7348202.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
