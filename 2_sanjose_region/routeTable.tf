resource oci_core_route_table export_vcn-drg-rt {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "SVCN-SJC-DRG-RT"
  freeform_tags = {
  }
#   route_rules {
#     #description = <<Optional value not found in discovery>>
#     destination       = "0.0.0.0/0"
#     destination_type  = "CIDR_BLOCK"
#     network_entity_id = "ocid1.privateip.oc1.us-sanjose-1.abzwuljrrgg3mrt4fzjkt7g7ha7ym6yhxbqsfrt4yil5odrqjol34eqrbf5a"
#     #route_type = <<Optional value not found in discovery>>
#   }
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_route_table export_spoke-vcn-a-public-rt {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-a-public-rt"
  freeform_tags = {
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_spoke-vcn-a.id
}

resource oci_core_route_table export_spoke-vcn-b-rt-2 {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-b-rt-2"
  freeform_tags = {
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_spoke-vcn-b.id
}

resource oci_core_route_table export_spoke-vcn-b-rt-1 {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "spoke-vcn-b-rt-1"
  freeform_tags = {
  }
  vcn_id = oci_core_vcn.export_spoke-vcn-b.id
}

resource oci_core_default_route_table export_Default-Route-Table-for-spoke-vcn-b {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "Default Route Table for spoke-vcn-b"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_spoke-vcn-b.default_route_table_id
}

resource oci_core_default_route_table export_Default-Route-Table-for-spoke-vcn-a {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "Default Route Table for spoke-vcn-a"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_spoke-vcn-a.default_route_table_id
}

resource oci_core_route_table export_valtix-svcn-mgmt-subnet-rt {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "valtix-svcn-mgmt-subnet-rt"
  freeform_tags = {
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_valtix-svcn-igw.id
    #route_type = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_route_table export_valtix-svcn-datapath-subnet-rt {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "valtix-svcn-datapath-subnet-rt"
  freeform_tags = {
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_valtix-svcn-igw.id
    #route_type = <<Optional value not found in discovery>>
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "10.30.0.0/24"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "10.30.1.0/24"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  route_rules {
    description       = "phoenix-vnc"
    destination       = "10.40.0.0/24"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "10.50.0.0/16"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-SJC.id
    #route_type = <<Optional value not found in discovery>>
  }
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_default_route_table export_Default-Route-Table-for-mcd-svcn {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "Default Route Table for mcd-svcn"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_mcd-svcn.default_route_table_id
}