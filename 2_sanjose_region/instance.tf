resource oci_core_instance export_vcn-a-public-instance {

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  create_vnic_details {
    assign_public_ip = "true"
    display_name = "vcn-a-public-instance"
    freeform_tags = {
    }
    hostname_label = "vcn-a-public-instance"
    nsg_ids = [
    ]
    skip_source_dest_check = "false"
    subnet_id              = oci_core_subnet.export_vcn-a-subnet-public.id
  }
  display_name = "vcn-a-public-instance"
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
    source_id   = var.oci_core_instance-3
    source_type = "image"
  }
  state = "RUNNING"
}

resource oci_core_instance export_vcn-b-public-instance {
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id = oci_artifacts_container_configuration.export_container_configuration.id
  create_vnic_details {
    assign_public_ip = "true"
    display_name = "vcn-b-public-instance"
    freeform_tags = {
    }
    hostname_label = "vcn-b-public-instance"
    nsg_ids = [
    ]
    skip_source_dest_check = "false"
    subnet_id              = oci_core_subnet.export_vcn-b-subnet-public.id
  }
  #dedicated_vm_host_id = <<Optional value not found in discovery>>
  display_name = "vcn-b-public-instance"
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
    source_id   = var.oci_core_instance-3
    source_type = "image"
  }
  state = "RUNNING"
}
