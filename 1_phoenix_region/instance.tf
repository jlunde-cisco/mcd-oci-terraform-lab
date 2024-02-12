resource "oci_core_instance" "export_phoenix-private" {
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  create_vnic_details {
    assign_public_ip = "false"
    display_name     = "phoenix-private"
    freeform_tags = {
    }
    hostname_label = "phoenix-private"
    nsg_ids = [
    ]
    skip_source_dest_check = "false"
    subnet_id              = oci_core_subnet.export_private-subnet-phoenix-vcn.id
  }
  display_name = "phoenix-private"
  extended_metadata = {
  }
  freeform_tags = {
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = "true"
    is_pv_encryption_in_transit_enabled = "true"
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  metadata = {
    "ssh_authorized_keys" = var.oci_instance_public_key
  }
  shape = "VM.Standard.A1.Flex"
  shape_config {
    baseline_ocpu_utilization = ""
    memory_in_gbs             = "6"
    ocpus                     = "1"
    vcpus                     = "1"
  }
  source_details {
    boot_volume_vpus_per_gb = "10"
    source_id   = var.oci_core_instance-1
    source_type = "image"
  }
  state = "RUNNING"
}

resource "oci_core_instance" "export_phoenix-public_1" {
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  create_vnic_details {
    assign_public_ip = "true"
    display_name     = "phoenix-public"
    freeform_tags = {
    }
    hostname_label = "phoenix-public"
    nsg_ids = [
    ]
    skip_source_dest_check = "false"
    subnet_id              = oci_core_subnet.export_public-subnet-phoenix-vcn.id
  }
  display_name = "phoenix-public"
  extended_metadata = {
  }
  freeform_tags = {
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = "true"
    is_pv_encryption_in_transit_enabled = "true"
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  metadata = {
    "ssh_authorized_keys" = var.oci_instance_public_key
  }
  shape = "VM.Standard.E4.Flex"
  shape_config {
    baseline_ocpu_utilization = ""
    memory_in_gbs             = "16"
    ocpus                     = "1"
    vcpus                     = "2"
  }
  source_details {
    boot_volume_vpus_per_gb = "10"
    source_id   = var.oci_core_instance-2
    source_type = "image"
  }
  state = "RUNNING"
}