resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = "[sg-0402859183bbbfa7d]"

  tags = {
    Name = "frontend"
  }
}

