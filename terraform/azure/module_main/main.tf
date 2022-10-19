module "vnet" {
  source="../networking"
  resource_group_name=var.resource_group_name
  resource_group_location=var.resource_group_location
  vnet_name=var.vnet_name
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
}
output "vnet-id" {
    value=module.vnet.vnet_id
}
output "subnet_ids" {
    value = module.vnet.subet_ids
  
}
output "subnet_cidr" {
 value=module.vnet.subnet_cidr 
}