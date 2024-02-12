terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.26.0"
    }
    ciscomcd = {
      source  = "CiscoDevNet/ciscomcd"
      version = "0.2.4"
    }
  }
}

provider "oci" {
  alias            = "phx"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = "key_files/priv_key.pem"
  region           = var.oci_region_phx
}

provider "oci" {
  alias            = "sjc"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = "key_files/priv_key.pem"
  region           = var.oci_region_sjc
}

# Set the CiscoMCD Terraform Provider Settings
provider "ciscomcd" {
  api_key_file = file(var.ciscomcd_api_key_file)
}