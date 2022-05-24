resource "random_id" "secret" {
  byte_length = 4
}

resource "google_secret_manager_secret" "federation" {
  secret_id = "${var.federation_secret_id}-${random_id.secret.hex}"

  replication {
    automatic = true
  }
}
