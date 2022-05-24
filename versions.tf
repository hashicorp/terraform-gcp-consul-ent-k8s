terraform {
  required_version = ">= 1.0"

  required_providers {
    google     = ">=2.0"
    helm       = "2.5.0"
    kubernetes = "2.10.0"
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}
