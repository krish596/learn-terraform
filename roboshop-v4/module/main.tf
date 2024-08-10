
resource "aws_instance" "instance" {

  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group

  tags = {
    Name = var.name
  }
}



resource "aws_route53_record" "record" {

  zone_id = var.zone_id
  name    = "${var.name}-dev.kr7348202.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}