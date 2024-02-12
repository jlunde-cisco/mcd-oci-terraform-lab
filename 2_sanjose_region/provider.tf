terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "5.26.0"
      configuration_aliases = [ oci ]
    }
  }
}