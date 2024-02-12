resource oci_core_network_security_group export_valtix-svcn-mgmt-nsg {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "valtix-svcn-mgmt-nsg"
  freeform_tags = {
  }
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_network_security_group export_valtix-svcn-datapath-nsg {
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  display_name = "valtix-svcn-datapath-nsg"
  freeform_tags = {
  }
  vcn_id = oci_core_vcn.export_mcd-svcn.id
}

resource oci_core_network_security_group_security_rule export_valtix-svcn-mgmt-nsg_network_security_group_security_rule {
  #description = <<Optional value not found in discovery>>
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_valtix-svcn-mgmt-nsg.id
  protocol                  = "all"
  #source = <<Optional value not found in discovery>>
  source_type = ""
  stateless   = "false"
}

resource oci_core_network_security_group_security_rule export_valtix-svcn-datapath-nsg_network_security_group_security_rule {
  #description = <<Optional value not found in discovery>>
  #destination = <<Optional value not found in discovery>>
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_valtix-svcn-datapath-nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_valtix-svcn-datapath-nsg_network_security_group_security_rule_1 {
  #description = <<Optional value not found in discovery>>
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_valtix-svcn-datapath-nsg.id
  protocol                  = "all"
  #source = <<Optional value not found in discovery>>
  source_type = ""
  stateless   = "false"
}