# resource "ciscomcd_gateway" "oci_gw" {
#   name                    = var.oci_egress_gw_phx.ciscomcd_egress_gw_name
#   description             = var.oci_egress_gw_phx.ciscomcd_egress_gw_desc
#   csp_account_name        = var.oci_account_name
#   instance_type           = var.oci_instance_type
#   gateway_image           = var.gateway_image
#   gateway_state           = var.oci_egress_gw_phx.gateway_state
#   mode                    = var.oci_egress_gw_phx.mode
#   security_type           = var.oci_egress_gw_phx.security_type
#   ssh_public_key          = file("key_files/oci_public_key.pub")
#   policy_rule_set_id      = var.egress_policy_rule_set_id
#   region                  = var.oci_region
#   vpc_id                  = oci_core_vcn.export_phoenix-svcn.id
#   mgmt_security_group     = oci_core_network_security_group.export_valtix-svcn-mgmt-nsg.id
#   datapath_security_group = oci_core_network_security_group.export_valtix-svcn-datapath-nsg.id
#   instance_details {
#     availability_zone = var.availability_domain--RVji-PHX-AD-1
#     mgmt_subnet       = oci_core_subnet.export_valtix-svcn-mgmt-subnet.id
#     datapath_subnet   = oci_core_subnet.export_valtix-svcn-datapath-subnet.id

#   }
# }