data "aws_ami_ids" "ami" {


  owners           = ["973714476881"]

}

output "ami" {
  value = data.aws_ami_ids.ami
}