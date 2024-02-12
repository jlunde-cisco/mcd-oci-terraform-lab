resource oci_core_remote_peering_connection export_sanjose-to-phoenix-peering {
  compartment_id = var.compartment_ocid
  display_name = "sanjose-to-phoenix-peering"
  drg_id       = var.sjc_drg_id
  freeform_tags = {
  }
  peer_id          = var.phx_rpc_id
  peer_region_name = var.oci_region_phx
  provider = oci.sjc
}

resource "oci_core_drg_attachment_management" "test_drg_rpc_attachment" {
  #Required
  attachment_type = "REMOTE_PEERING_CONNECTION"
  compartment_id = var.compartment_ocid
  drg_id = var.sjc_drg_id

  #Optional
  display_name = "RPC Attachment for SanJose-to-Phoenix"
  provider = oci.sjc
}

resource oci_core_drg_route_table_route_rule export_DRG-SJC-RPC-RT_drg_route_table_route_rule {
  destination                = "10.50.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.sjc_drg_rpc_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.sjc

}

resource oci_core_drg_route_table_route_rule export_DRG-SJC-RPC-RT_drg_route_table_route_rule_1 {
  destination                = "10.40.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.sjc_drg_rpc_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.sjc
}

resource oci_core_drg_route_table_route_rule export_DRG-HUB-RT_drg_route_table_route_rule {
  destination                = "10.50.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.sjc_drg_hub_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.sjc
}

resource oci_core_drg_route_table_route_rule export_DRG-HUB-RT_drg_route_table_route_rule_1 {
  destination                = "10.40.0.0/24"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.sjc_drg_hub_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.sjc
}

resource oci_core_drg_route_table_route_rule export_DRG-SPOKE-RT_drg_route_table_route_rule_1 {
  destination                = "10.50.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.sjc_drg_spoke_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.sjc
}