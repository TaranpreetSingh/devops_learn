# Variables
variable "compartment_name" { 
    type = string
    default = "value"
    }
variable "compartment_desc" { 
    type = string
    default = "value"
     }
variable "root_compartment_id" {
    type = string
    default = "value"
}


# Resources
resource "oci_identity_compartment" "tf_compartment" {
  # Required
  compartment_id = var.root_compartment_id
  description    = var.compartment_desc
  name           = var.compartment_name
}


# Outputs
output "compartment_name" {
  value = oci_identity_compartment.tf_compartment.name
}

output "compartment_id" {
  value = oci_identity_compartment.tf_compartment.id
}