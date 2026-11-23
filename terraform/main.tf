terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path    = pathexpand("~/.kube/config")
  config_context = "rancher-desktop"
}

resource "kubernetes_namespace_v1" "dashboard" {
  metadata {
    name = "dashboard-lab"
  }
}
