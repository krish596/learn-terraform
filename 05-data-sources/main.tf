data "aws_ami" "ami" {

  most_recent      = true
  owners           = ["973714476881"]

}

output "ami" {
  value = data.aws_ami.ami.id
}