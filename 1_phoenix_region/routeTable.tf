
resource "oci_core_route_table" "export_valtix-svcn-mgmt-subnet-rt" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "valtix-svcn-mgmt-subnet-rt"
  freeform_tags = {
  }
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_phoenix-svcn-igw.id
  }
  vcn_id = oci_core_vcn.export_phoenix-svcn.id
}

resource "oci_core_route_table" "export_valtix-svcn-datapath-subnet-rt" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "valtix-svcn-datapath-subnet-rt"
  freeform_tags = {
  }
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_phoenix-svcn-igw.id
  }
  route_rules {
    destination       = "10.40.0.0/24"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-Phoenix.id
  }
  route_rules {
    destination       = "10.30.0.0/16"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-Phoenix.id
  }
  vcn_id = oci_core_vcn.export_phoenix-svcn.id
}

resource "oci_core_default_route_table" "export_Default-Route-Table-for-phoenix-svcn" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "Default Route Table for phoenix-svcn"
  freeform_tags = {
  }
  manage_default_resource_id = oci_core_vcn.export_phoenix-svcn.default_route_table_id
}

resource "oci_core_route_table" "export_route-table-for-private-subnet-phoenix-vcn" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "route table for private subnet-phoenix-vcn"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-Phoenix.id
  }
  vcn_id = oci_core_vcn.export_phoenix-vcn.id
}

resource "oci_core_default_route_table" "export_default-route-table-for-phoenix-vcn" {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name   = "default route table for phoenix-vcn"
  freeform_tags = {
    "VCN" = "VCN-2024-01-18T17:16:11"
  }
  manage_default_resource_id = oci_core_vcn.export_phoenix-vcn.default_route_table_id
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_drg.export_DRG-Phoenix.id
  }
  route_rules {
    destination       = "173.38.117.91/32"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.export_Internet-gateway-phoenix-vcn.id
  }
}