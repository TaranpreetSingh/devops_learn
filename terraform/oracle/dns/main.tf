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
    load_balancer_id = data.oci_load_balancer_load_balancers.test_load_balancer.id
}

output "lb_detail"{
    value=data.oci_load_balancer_hostnames.test_hostnames[0].hostnames
}