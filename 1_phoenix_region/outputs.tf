output "phx_drg_id" {
  value = oci_core_drg.export_DRG-Phoenix.id
}
output "phx_svcn_id" {
  value = oci_core_vcn.export_phoenix-svcn.id
}
output "phx_drg_rpc_id" {
  value = oci_core_drg_route_table.export_DRG-PHOENIX-RPC-RT.id
}
output "phx_drg_spoke_rt_id" {
  value = oci_core_drg_route_table.export_DRG-PHOENIX-SPOKE-RT.id
}
output "phx_drg_hub_rt_id" {
  value = oci_core_drg_route_table.export_DRG-PHOENIX-HUB-RT.id
}