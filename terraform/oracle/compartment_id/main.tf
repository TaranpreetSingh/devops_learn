data "oci_identity_domain" "test_domain" {
    #Required
    domain_id = oci_identity_domain.test_domain.id
}
output "test" {
    value = data.oci_identity_domain.test_domain.domain_id
  
}