## Oracle OCI provider variables
variable "tenancy_ocid" {
  type = string
}
variable "user_ocid" {
  type = string
}
variable "fingerprint" {
  type = string
}

## Module 0 Variables
# CiscoMCD Egress/EW Policy Group Name
variable "ciscomcd_egressew_policy_group_name" {
  type = string
}
# CiscoMCD Egress/EW Policy Advanced Name
variable "ciscomcd_egressew_policy_advanced_name" {
  type = string
}
# CiscoMCD API Key File
variable "ciscomcd_api_key_file" {
  type = string
}


## Module 1 Variables
variable "compartment_ocid" {
  type = string
}
variable "oci_region_phx" {
  type    = string
  default = "us-phoenix-1"
}
variable "availability_domain_phx" {
  type = string
}
variable "oci_core_instance-1" {
  type = string
}
variable "oci_core_instance-2" {
  type = string
}

## Module 2 Variables
variable "oci_region_sjc" {
  type    = string
}
variable "availability_domain_sjc" {
  type = string
}
variable "oci_core_instance-3" {
  type = string
}

# Cisco MCD Gateway Settings
# variable "oci_egress_gw_phx" {

# }
# variable "oci_egress_gw_sjc" {

# }
# variable "ciscomcd_egress_gw_name" {
#   type = string
# }
# variable "ciscomcd_egress_gw_desc" {
#   type = string
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
# variable "gateway_state" {
#   type = string
# }
# variable "mode" {
#   type = string
# }
# variable "security_type" {
#   type = string
# }
# variable "ssh_public_key" {
#   type = string
# }
# variable "policy_rule_set_id" {
#   type = string
# }




# variable "oci_gw_pub_ssh_key" {
#   type = string
# }