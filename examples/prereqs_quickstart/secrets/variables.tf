variable "federation_secret_id" {
  type        = string
  default     = "consul-federation-secret"
  description = "Secret id/name given to the google secrets manager secret for the Consul federation secret"
}
