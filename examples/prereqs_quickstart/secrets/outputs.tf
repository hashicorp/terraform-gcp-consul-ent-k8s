output "federation_secret_id" {
  value       = google_secret_manager_secret.federation.id
  description = "Secret id/name given to the Google Secret Manager secret for the Consul federation secret"
}
