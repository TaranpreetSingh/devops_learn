output "vnet_id" {
  value=azurerm_virtual_network.example.id
}
output "subet_ids" {
value=azurerm_virtual_network.example.subnet.id
}
output "subnet_cidr" {
  value=azurerm_subnet.example.address_prefixes
}