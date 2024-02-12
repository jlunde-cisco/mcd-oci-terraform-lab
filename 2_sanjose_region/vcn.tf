resource oci_core_vcn export_spoke-vcn-b {
  #byoipv6cidr_details = <<Optional value not found in discovery>>
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.30.1.0/24",
  ]
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-b"
  dns_label    = "spokevcnb"
  freeform_tags = {
  }
  ipv6private_cidr_blocks = [
  ]
  #is_ipv6enabled = <<Optional value not found in discovery>>
  #is_oracle_gua_allocation_enabled = <<Optional value not found in discovery>>
}

resource oci_core_vcn export_spoke-vcn-a {
  #byoipv6cidr_details = <<Optional value not found in discovery>>
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.30.0.0/24",
  ]
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-a"
  dns_label    = "spokevcna"
  freeform_tags = {
  }
  ipv6private_cidr_blocks = [
  ]
  #is_ipv6enabled = <<Optional value not found in discovery>>
  #is_oracle_gua_allocation_enabled = <<Optional value not found in discovery>>
}

resource oci_core_vcn export_mcd-svcn {
  #byoipv6cidr_details = <<Optional value not found in discovery>>
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.20.0.0/16",
  ]
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "mcd-svcn"
  dns_label    = "mcdsvcn"
  freeform_tags = {
  }
  ipv6private_cidr_blocks = [
  ]
  #is_ipv6enabled = <<Optional value not found in discovery>>
  #is_oracle_gua_allocation_enabled = <<Optional value not found in discovery>>
}