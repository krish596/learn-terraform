module "components" {
  source = "./module"

  name = var.name
  zone_id = var.zone_id
  instance_type = var.instance_type
  security_group = var.security_group



}