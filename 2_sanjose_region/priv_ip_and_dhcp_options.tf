
resource oci_core_default_dhcp_options export_Default-DHCP-Options-for-spoke-vcn-b {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name     = "Default DHCP Options for spoke-vcn-b"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_spoke-vcn-b.default_dhcp_options_id
  options {
    custom_dns_servers = [
    ]
    #search_domain_names = <<Optional value not found in discovery>>
    server_type = "VcnLocalPlusInternet"
    type        = "DomainNameServer"
  }
  options {
    #custom_dns_servers = <<Optional value not found in discovery>>
    search_domain_names = [
      "spokevcnb.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}

resource oci_core_default_dhcp_options export_Default-DHCP-Options-for-spoke-vcn-a {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name     = "Default DHCP Options for spoke-vcn-a"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_spoke-vcn-a.default_dhcp_options_id
  options {
    custom_dns_servers = [
    ]
    #search_domain_names = <<Optional value not found in discovery>>
    server_type = "VcnLocalPlusInternet"
    type        = "DomainNameServer"
  }
  options {
    #custom_dns_servers = <<Optional value not found in discovery>>
    search_domain_names = [
      "spokevcna.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}

resource oci_core_default_dhcp_options export_Default-DHCP-Options-for-mcd-svcn {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name     = "Default DHCP Options for mcd-svcn"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_mcd-svcn.default_dhcp_options_id
  options {
    custom_dns_servers = [
    ]
    #search_domain_names = <<Optional value not found in discovery>>
    server_type = "VcnLocalPlusInternet"
    type        = "DomainNameServer"
  }
  options {
    #custom_dns_servers = <<Optional value not found in discovery>>
    search_domain_names = [
      "mcdsvcn.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}

