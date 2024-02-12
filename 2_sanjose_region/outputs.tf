  output "sjc_drg_id" {
    value = oci_core_drg.export_DRG-SJC.id
  }
  output "sjc_svcn_id" {
    value = oci_core_vcn.export_mcd-svcn.id
  }
  output "sjc_drg_rpc_id" {
    value = oci_core_drg_route_table.export_DRG-SJC-RPC-RT.id
  }
  output "sjc_drg_spoke_rt_id" {
    value = oci_core_drg_route_table.export_DRG-SPOKE-RT.id
  }
  output "sjc_drg_hub_rt_id" {
    value = oci_core_drg_route_table.export_DRG-HUB-RT.id
  }