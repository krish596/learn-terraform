data "aws_ami_ids" "ami" {

  name_regex = "Centos-*"
  owners           = ["973714476881"]

}

resource "aws_instance" "instance" {
  ami        = data.aws_ami_ids.ami
  instance_type = "t3.small"
}

variable "instance_type" {}