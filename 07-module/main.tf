module "test" {
  source = "./local-module"

}

output "ami" {
  value = data.aws_ami_ids
}
