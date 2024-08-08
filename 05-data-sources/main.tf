data "aws_ami" "ami" {
  most_recent = true
  owners = ["973714476881"]
  tags = {
    Name = "Centos-8-DevOps-Practice"
  }
}

output "aws_ami" {
  value = data.aws_ami.ami.id
}