variable "compartment_id" {
  default=""
}
data "oci_load_balancer_load_balancers" "test_load_balancers" {
    #Required
    compartment_id = var.compartment_id


data "oci_load_balancer_hostnames" "test_hostnames" {
    #Required
    load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
}

output "lb_detail"{
    value=data.oci_load_balancer_load_balancer.test_hostnames[0].hostnames
}