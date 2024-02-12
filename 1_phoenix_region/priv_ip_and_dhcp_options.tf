resource "oci_core_default_dhcp_options" "export_Default-DHCP-Options-for-phoenix-svcn" {
  compartment_id   = oci_artifacts_container_configuration.export_container_configuration.id
  display_name     = "Default DHCP Options for phoenix-svcn"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_phoenix-svcn.default_dhcp_options_id
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
      "phoenixsvcn.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}

resource "oci_core_default_dhcp_options" "export_Default-DHCP-Options-for-phoenix-vcn" {
  compartment_id   = oci_artifacts_container_configuration.export_container_configuration.id
  display_name     = "Default DHCP Options for phoenix-vcn"
  domain_name_type = "CUSTOM_DOMAIN"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  manage_default_resource_id = oci_core_vcn.export_phoenix-vcn.default_dhcp_options_id
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
      "phoenixvcn.oraclevcn.com",
    ]
    #server_type = <<Optional value not found in discovery>>
    type = "SearchDomain"
  }
}