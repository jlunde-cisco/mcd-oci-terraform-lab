terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.26.0"
    }
  }
}

provider "oci" {
  alias            = "phx"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa25nyd44x4kruauq47wqngjm6m33qoxquxo4lzap6vy7525uz47oq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaaoynoc7p2nzdkevmh3rhjba4rsy2bmsvj6fmkeum6p2nv65yvav2a"
  fingerprint      = "44:f1:57:cd:ea:5c:4d:5e:c3:98:3d:81:bd:7d:1e:b9"
  private_key_path = "../key_files/priv_key.pem"
  region           = var.oci_region_phx
}

provider "oci" {
  alias            = "sjc"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa25nyd44x4kruauq47wqngjm6m33qoxquxo4lzap6vy7525uz47oq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaaoynoc7p2nzdkevmh3rhjba4rsy2bmsvj6fmkeum6p2nv65yvav2a"
  fingerprint      = "44:f1:57:cd:ea:5c:4d:5e:c3:98:3d:81:bd:7d:1e:b9"
  private_key_path = "../key_files/priv_key.pem"
  region           = var.oci_region_sjc
}