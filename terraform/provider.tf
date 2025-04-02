locals {
  credentials_file = file("serviceAccountGCP.json")
}
#GCP Provider
provider "google" {
  project = var.project_id
  credentials = local.credentials_file
  region = var.region
  zone = var.zone
}