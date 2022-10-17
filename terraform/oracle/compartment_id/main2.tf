# Variables

variable "root_compartment_id" {
    type = string
    default = "value"
}


# Resources
 data "oci_identity_compartment" "tf_compartment" {
  # Required
  id = var.root_compartment_id

}
data "oci_identity_compartments" "test_compartments" {
    #Required
    compartment_id = var.root_compartment_id
    filter{
      name="OPC-2"
      value=data.oci_identity_compartments.test_compartments.name
    }

}

# Outputs
# output "compartment_name" {
#   value = oci_identity_compartment.tf_compartment.name
# }

# output "compartment_id" {
#   value = oci_identity_compartment.tf_compartment.id
# }
output "compartment_id" {
  value = data.oci_identity_compartment.tf_compartment
}
output "name" {
  value=data.oci_identity_compartments.test_compartments
}