variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name on which to install Consul"
}

variable "kubernetes_namespace" {
  type        = string
  default     = "consul"
  description = "The namespace to install the release into"
}

variable "project_id" {
  type        = string
  description = "The project ID in which to build resources"
}

variable "region" {
  type        = string
  description = "GCP region in which to launch resources"
}
