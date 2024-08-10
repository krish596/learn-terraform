module "components" {
  source = "./module"
  for_each = module.components
  name = each.value["name"]
  zone_id = var.zone_id
  instance_type = each.value["instance_type"]
  security_group = var.security_group




}