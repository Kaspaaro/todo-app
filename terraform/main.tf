resource "google_cloud_run_v2_service" "default" {
    name     = "cloudrun-service-trainee"
    location = var.region
    deletion_protection = false
    ingress = "INGRESS_TRAFFIC_ALL"

    template {
        containers {
            image = var.container_image
        }
    }
}