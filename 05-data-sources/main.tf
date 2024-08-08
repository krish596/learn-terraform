data "aws_ami_ids" "ami" {

  name_regex = "centos-*"
  owners = ["973714476881"]

}

output "aws_ami" {
  value = data.aws_ami_ids.ami
}