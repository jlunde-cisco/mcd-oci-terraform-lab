resource "oci_core_subnet" "export_valtix-svcn-mgmt-subnet" {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block      = "10.50.0.0/24"
  compartment_id  = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_default_dhcp_options.export_Default-DHCP-Options-for-phoenix-svcn.id
  display_name    = "valtix-svcn-mgmt-subnet"
  dns_label       = "valtixsvcnmgmts"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.export_valtix-svcn-mgmt-subnet-rt.id
  security_list_ids = [
    oci_core_vcn.export_phoenix-svcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_phoenix-svcn.id
}

resource "oci_core_subnet" "export_valtix-svcn-datapath-subnet" {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block      = "10.50.1.0/24"
  compartment_id  = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_default_dhcp_options.export_Default-DHCP-Options-for-phoenix-svcn.id
  display_name    = "valtix-svcn-datapath-subnet"
  dns_label       = "valtixsvcndatap"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.export_valtix-svcn-datapath-subnet-rt.id
  security_list_ids = [
    oci_core_vcn.export_phoenix-svcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_phoenix-svcn.id
}

resource "oci_core_subnet" "export_public-subnet-phoenix-vcn" {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block      = "10.40.0.0/25"
  compartment_id  = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_phoenix-vcn.default_dhcp_options_id
  display_name    = "public subnet-phoenix-vcn"
  dns_label       = "sub01181716540"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_vcn.export_phoenix-vcn.default_route_table_id
  security_list_ids = [
    oci_core_vcn.export_phoenix-vcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_phoenix-vcn.id
}

resource "oci_core_subnet" "export_private-subnet-phoenix-vcn" {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block      = "10.40.0.128/25"
  compartment_id  = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_phoenix-vcn.default_dhcp_options_id
  display_name    = "private subnet-phoenix-vcn"
  dns_label       = "sub01181716541"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "true"
  prohibit_public_ip_on_vnic = "true"
  route_table_id             = oci_core_route_table.export_route-table-for-private-subnet-phoenix-vcn.id
  security_list_ids = [
    oci_core_vcn.export_phoenix-vcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_phoenix-vcn.id
}
