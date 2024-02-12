resource "oci_core_vcn" "export_phoenix-svcn" {
  #byoipv6cidr_details = <<Optional value not found in discovery>>
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.50.0.0/16",
  ]
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "phoenix-mcd-svcn"
  dns_label      = "phoenixsvcn"
  freeform_tags = {
  }
  ipv6private_cidr_blocks = [
  ]
  #is_ipv6enabled = <<Optional value not found in discovery>>
  #is_oracle_gua_allocation_enabled = <<Optional value not found in discovery>>
}

resource "oci_core_vcn" "export_phoenix-vcn" {
  #byoipv6cidr_details = <<Optional value not found in discovery>>
  #cidr_block = <<Optional value not found in discovery>>
  cidr_blocks = [
    "10.40.0.0/24",
  ]
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "phoenix-spoke-vcn"
  dns_label      = "phoenixvcn"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  ipv6private_cidr_blocks = [
  ]
  #is_ipv6enabled = <<Optional value not found in discovery>>
  #is_oracle_gua_allocation_enabled = <<Optional value not found in discovery>>
}