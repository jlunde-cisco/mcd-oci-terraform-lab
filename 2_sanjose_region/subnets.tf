resource oci_core_subnet export_vcn-a-subnet-public {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.30.0.128/25"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_spoke-vcn-a.default_dhcp_options_id
  display_name    = "vcn-a-subnet-public"
  dns_label       = "vcnasubnetpubli"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.export_spoke-vcn-a-public-rt.id
  security_list_ids = [
    oci_core_vcn.export_spoke-vcn-a.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_spoke-vcn-a.id
}

resource oci_core_subnet export_vcn-b-subnet-public {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.30.1.128/25"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_spoke-vcn-b.default_dhcp_options_id
  display_name    = "vcn-b-subnet-public"
  dns_label       = "spokebsubnet2"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.export_spoke-vcn-b-rt-2.id
  security_list_ids = [
    oci_core_vcn.export_spoke-vcn-b.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_spoke-vcn-b.id
}

resource oci_core_subnet export_vcn-b-subnet-private {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.30.1.0/25"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_spoke-vcn-b.default_dhcp_options_id
  display_name    = "vcn-b-subnet-private"
  dns_label       = "spokevcnbsubnet"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "false"
  prohibit_public_ip_on_vnic = "false"
  route_table_id             = oci_core_route_table.export_spoke-vcn-b-rt-1.id
  security_list_ids = [
    oci_core_vcn.export_spoke-vcn-b.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_spoke-vcn-b.id
}

resource oci_core_subnet export_vcn-a-subnet-private {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.30.0.0/25"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_spoke-vcn-a.default_dhcp_options_id
  display_name    = "vcn-a-subnet-private"
  dns_label       = "vcnasubnet"
  freeform_tags = {
  }
  #ipv6cidr_block = <<Optional value not found in discovery>>
  ipv6cidr_blocks = [
  ]
  prohibit_internet_ingress  = "true"
  prohibit_public_ip_on_vnic = "true"
  route_table_id             = oci_core_vcn.export_spoke-vcn-a.default_route_table_id
  security_list_ids = [
    oci_core_vcn.export_spoke-vcn-a.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_spoke-vcn-a.id
}

resource oci_core_subnet export_mcd-svcn-mgmt-subnet {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.20.0.0/24"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_mcd-svcn.default_dhcp_options_id
  display_name    = "mcd-svcn-mgmt-subnet"
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
    oci_core_vcn.export_mcd-svcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_subnet export_mcd-svcn-datapath-subnet {
  #availability_domain = <<Optional value not found in discovery>>
  cidr_block     = "10.20.1.0/24"
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  dhcp_options_id = oci_core_vcn.export_mcd-svcn.default_dhcp_options_id
  display_name    = "mcd-svcn-datapath-subnet"
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
    oci_core_vcn.export_mcd-svcn.default_security_list_id,
  ]
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}