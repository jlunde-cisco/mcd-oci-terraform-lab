variable "oci_core_instance-1" {
  type = string
}
variable "oci_core_instance-2" {
  type = string
}
variable "oci_region" {
  type = string
}
variable "compartment_ocid" {
  type = string
}
variable "availability_domain" {
  type = string
}
variable "oci_instance_public_key" {
  type = string
}


### Future variables for GW deployment in this region
# variable "oci_egress_gw_phx" {
# }
# variable "oci_account_name" {
#   type = string
# }
# variable "oci_instance_type" {
#   type = string
# }
# variable "gateway_image" {
#   type = string
# }
# variable "oci_gw_pub_ssh_key" {
#   type = string
# }
# variable "egress_policy_rule_set_id" {
#   type = string
# }
