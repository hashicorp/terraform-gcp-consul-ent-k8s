variable "project_id" {
  type        = string
  description = "The project ID to host the network in"
}

variable "network_name" {
  type        = string
  default     = "consul-test-network"
  description = "The name of the VPC network being created"
}

variable "region" {
  type        = string
  description = "GCP region in which to launch resources"
}
