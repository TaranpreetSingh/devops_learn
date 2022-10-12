variable "compartment_id" {
  default=""
}
variable "display_name" {
  default=""
}
data "oci_load_balancer_load_balancers" "test_load_balancers" {
    #Required
    compartment_id = var.compartment_id
    display_name = var.load_balancer_display_name

}
data "oci_load_balancer_hostnames" "test_hostnames" {
    #Required
    load_balancer_id = data.oci_load_balancer_load_balancers.test_load_balancers.id
}

output "lb_detail"{
    value=data.oci_load_balancer_hostnames.test_hostnames[0].hostnames
}

output "lb_detail_2" {
  value=data.oci_load_balancer_load_balancers.test_load_balancers.load_balancers 
}