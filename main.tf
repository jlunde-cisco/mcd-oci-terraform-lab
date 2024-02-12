# Create some basline Cisco MCD Egress Policies (empty policies for GW attachment)
module "ciscomcd-policy" {
  source                              = "./0_mcd_policy"
  ciscomcd_egressew_policy_group_name = var.ciscomcd_egressew_policy_group_name
  ciscomcd_egressew_policy_name       = var.ciscomcd_egressew_policy_advanced_name
}

# Setup the resources in the OCI Phoenix Region
module "setup_phx" {
  source           = "./1_phoenix_region"
  oci_region       = var.oci_region_phx
  compartment_ocid = var.compartment_ocid
  availability_domain = var.availability_domain_phx
  oci_core_instance-1 = var.oci_core_instance-1
  oci_core_instance-2 = var.oci_core_instance-2
  oci_instance_public_key = file("${path.module}/key_files/oci_public_key.pub")
  providers = {
    oci = oci.phx
  }
  depends_on = [module.ciscomcd-policy]
}

# #Setup the resources in the OCI San Jose Region
module "setup_sjc" {
  source = "./2_sanjose_region"
  oci_region       = var.oci_region_sjc
  compartment_ocid = var.compartment_ocid
  availability_domain = var.availability_domain_sjc
  oci_core_instance-3 = var.oci_core_instance-3
  oci_instance_public_key = file("${path.module}/key_files/oci_public_key.pub")
  providers = {
    oci = oci.sjc
  }
  depends_on = [module.ciscomcd-policy]
}

# #Setup the DRG and associated routes in Phoenix
module "phx_drg_setup" {
  source = "./3_phx_drg_setup"
  phx_svcn_id = module.setup_phx.phx_svcn_id
  phx_drg_id = module.setup_phx.phx_drg_id
  compartment_ocid = var.compartment_ocid
  oci_region_phx = var.oci_region_phx
  phx_drg_rpc_id = module.setup_phx.phx_drg_rpc_id
  phx_drg_spoke_rt_id = module.setup_phx.phx_drg_spoke_rt_id
  phx_drg_hub_rt_id = module.setup_phx.phx_drg_hub_rt_id
  providers = {
    oci.sjc = oci.sjc
    oci.phx = oci.phx
    
  }
  depends_on = [module.setup_phx]
}

# #Setup the resources in the OCI San Jose Region
module "sjc_drg_setup" {
  source = "./4_sjc_drg_setup"
  phx_svcn_id = module.setup_phx.phx_svcn_id
  phx_drg_id = module.setup_phx.phx_drg_id
  sjc_svcn_id = module.setup_sjc.sjc_svcn_id
  sjc_drg_id = module.setup_sjc.sjc_drg_id
  compartment_ocid = var.compartment_ocid
  oci_region_phx = var.oci_region_phx
  oci_region_sjc = var.oci_region_sjc
  sjc_drg_rpc_id = module.setup_sjc.sjc_drg_rpc_id
  sjc_drg_spoke_rt_id = module.setup_sjc.sjc_drg_spoke_rt_id
  sjc_drg_hub_rt_id = module.setup_sjc.sjc_drg_hub_rt_id
  phx_rpc_id = module.phx_drg_setup.phx_rpc_id
  providers = {
    oci.sjc = oci.sjc
    oci.phx = oci.phx
  }
  depends_on = [module.phx_drg_setup]
}