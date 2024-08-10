module "components" {
  source = "./module"

  zone_id = var.zone_id

  security_group = var.security_group



}