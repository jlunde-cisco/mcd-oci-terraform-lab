resource oci_core_remote_peering_connection export_phoenix-to-sanjose-peering {
  compartment_id = var.compartment_ocid
  display_name = "phoenix-to-sanjose-peering"
  drg_id       = var.phx_drg_id
  freeform_tags = {
  }
#   peer_id          = oci_core_remote_peering_connection.export_sanjose-to-phoenix-peering.id    
#   peer_region_name = var.oci_region_sjc
  provider = oci.phx
}

resource "oci_core_drg_attachment_management" "test_drg_rpc_attachment" {
  #Required
  attachment_type = "REMOTE_PEERING_CONNECTION"
  compartment_id = var.compartment_ocid
  drg_id = var.phx_drg_id

  #Optional
  display_name = "RPC Attachment for Phoenix-to-SanJose"
  provider = oci.phx
}

resource oci_core_drg_route_table_route_rule export_DRG-PHOENIX-RPC-RT_drg_route_table_route_rule {
  destination                = "10.30.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.phx_drg_rpc_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.phx
}

resource oci_core_drg_route_table_route_rule export_DRG-PHOENIX-RPC-RT_drg_route_table_route_rule_1 {
  destination                = "10.20.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.phx_drg_rpc_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.phx
}

resource oci_core_drg_route_table_route_rule export_DRG-PHOENIX-SPOKE-RT_drg_route_table_route_rule_1 {
  destination                = "10.20.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.phx_drg_spoke_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.phx
}

resource oci_core_drg_route_table_route_rule export_DRG-PHOENIX-HUB-RT_drg_route_table_route_rule {
  destination                = "10.20.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.phx_drg_hub_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.phx
}

resource oci_core_drg_route_table_route_rule export_DRG-PHOENIX-HUB-RT_drg_route_table_route_rule_1 {
  destination                = "10.30.0.0/16"
  destination_type           = "CIDR_BLOCK"
  drg_route_table_id         = var.phx_drg_hub_rt_id
  next_hop_drg_attachment_id = oci_core_drg_attachment_management.test_drg_rpc_attachment.id
  provider = oci.phx
}


