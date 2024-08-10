terraform {
  backend "s3" {
    bucket = "tf-state-db74"
    key    = "09-state/dev.tfvars"
    region = "us-east-1"
  }
}

variable "test" {}

output "test" {
  value = var.test
}