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


# Outputs
output "compartment_name" {
#   value = oci_identity_compartment.tf_compartment.name
# }

# output "compartment_id" {
#   value = oci_identity_compartment.tf_compartment.id
# }
output "compartment_id" {
  value = oci_identity_compartment.tf_compartment
}