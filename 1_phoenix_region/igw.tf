resource "oci_core_internet_gateway" "export_phoenix-svcn-igw" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "phoenix-svcn-igw"
  enabled        = "true"
  freeform_tags = {
  }
  #route_table_id = <<Optional value not found in discovery>>
  vcn_id = oci_core_vcn.export_phoenix-svcn.id
}

resource "oci_core_internet_gateway" "export_Internet-gateway-phoenix-vcn" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "Internet gateway-phoenix-vcn"
  enabled        = "true"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  #route_table_id = <<Optional value not found in discovery>>
  vcn_id = oci_core_vcn.export_phoenix-vcn.id
}