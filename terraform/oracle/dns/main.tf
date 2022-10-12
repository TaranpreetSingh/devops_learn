data "oci_load_balancer_hostnames" "test_hostnames" {
    #Required
    load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
}

output "lb_detail"{
    value=data.oci_load_balancer_load_balancer.test_hostnames[0].hostnames
}