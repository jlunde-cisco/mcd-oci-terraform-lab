resource oci_core_route_table export_SVCN-PHOENIX-DRG-RT {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaacogcimdcvuqxf32l3ikb6o6334wyudgtilihisrfsonrcc576ba"
  display_name = "SVCN-PHOENIX-DRG-RT"
  freeform_tags = {
  }
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.phx_loadbalancer_ocid
  }
  vcn_id = "ocid1.vcn.oc1.phx.amaaaaaa725octaattjow7j4oi27maayk7aalpe3ehofolwcbesn2r2vbrha"
  provider = oci.phx
}

resource oci_core_route_table export_vcn-drg-rt {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaacogcimdcvuqxf32l3ikb6o6334wyudgtilihisrfsonrcc576ba"
  display_name = "vcn-drg-rt"
  freeform_tags = {
  }
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.sjc_loadbalancer_ocid
  }
  vcn_id = "ocid1.vcn.oc1.us-sanjose-1.amaaaaaa725octaazwncc7c34nszadhyjfxjomvcjuzrrnow4ju5ybf7fb6a"
  provider = oci.sjc
}