variable "zone_id" {
  default = "Z084007432GC51JNSYQ6A"
}


variable "security_group" {
  default = ["sg-0402859183bbbfa7d"]
}


variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.small"
    }
  }
}

variable "instance_type" {}
variable "name" {}