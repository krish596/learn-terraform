data "aws_ami_ids" "ami" {

  most_recent      = true
  owners           = ["973714476881"]

}

output "ami" {
  value = data.aws_ami_ids.ami
}