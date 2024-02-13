# CiscoMCD Ingress Security Policy Rule Set Settings
# Feel free to change these....
ciscomcd_egressew_policy_advanced_name = "tf-oci-egress-standalone"
ciscomcd_egressew_policy_group_name    = "tf-oci-egress-group"

# Oracle OCI Compartment OCID (required)
compartment_ocid = [provide input here...]
# Oracle OCI Provider Information (required)
tenancy_ocid = [provide input here...]
user_ocid = [provide input here...]
fingerprint = [provide input here...]
# Cisco MCD API Key File (required if you change the file name)
ciscomcd_api_key_file = "key_files/multicloud_key.json"

# Phoenix variables
oci_region_phx      = "us-phoenix-1"
availability_domain_phx = "RVji:PHX-AD-1"
oci_core_instance-1 = "ocid1.image.oc1.phx.aaaaaaaaelbqhmr4jgyi5lhf4rjnsxr65ivstpkp5rczvjvuq4jvhhjkpd5a"
oci_core_instance-2 = "ocid1.image.oc1.phx.aaaaaaaa6tymp4xfigkaqazfi6yohpljyeyum5nmijrhktkqxypt34ouwf6q"

# San Jose variables
oci_region_sjc      = "us-sanjose-1"
availability_domain_sjc = "RVji:US-SANJOSE-1-AD-1"
oci_core_instance-3 = "ocid1.image.oc1.us-sanjose-1.aaaaaaaalxoke7w7h2vsb5mvaf4innpsieb5xdplixjtix45eznvdbm7snjq"

# OCI MCD GW Public SSH Key File 
#oci_gw_pub_ssh_key = "key_files/oci_public_key.key.pub"

#Cisco MCD Global GW Settings
# oci_account_name = "jason-valtix-oci"
# oci_instance_type       = "OCI_E3_FLEX"
# gateway_image           = "23.08-14"

# Cisco MCD Gateway Settings
# oci_egress_gw_phx = {
#     ciscomcd_egress_gw_name  = "oci-egress-gw-phx"
#     ciscomcd_egress_gw_desc  = "OCI Egress Gateway Phx Region"
#     gateway_state           = "ACTIVE"
#     mode                    = "EDGE"
#     security_type           = "EGRESS"
# }

# oci_egress_gw_sjc = {
#     ciscomcd_egress_gw_name  = "oci-egress-gw-sjc"
#     ciscomcd_egress_gw_desc  = "OCI Egress Gateway SJC Region"
#     gateway_state           = "ACTIVE"
#     mode                    = "EDGE"
#     security_type           = "EGRESS"
# }


