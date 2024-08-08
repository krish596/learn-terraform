data "aws_ami" "ami" {
  most_recent = true
  owners = ["973714476881"]

}

output "aws_ami" {
  value = data.aws_ami.ami
}