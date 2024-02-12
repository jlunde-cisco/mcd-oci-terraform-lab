resource oci_core_internet_gateway export_vcn-spoke-a {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-a-igw"
  enabled      = "true"
  freeform_tags = {
  }
  #route_table_id = <<Optional value not found in discovery>>
  vcn_id = oci_core_vcn.export_spoke-vcn-a.id
}

resource oci_core_internet_gateway export_spoke-vcn-b-igw {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-b-igw"
  enabled      = "true"
  freeform_tags = {
  }
  #route_table_id = <<Optional value not found in discovery>>
  vcn_id = oci_core_vcn.export_spoke-vcn-b.id
}

resource oci_core_internet_gateway export_valtix-svcn-igw {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "valtix-svcn-igw"
  enabled      = "true"
  freeform_tags = {
  }
  #route_table_id = <<Optional value not found in discovery>>
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}