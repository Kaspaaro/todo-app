
#Defining cloud run service
resource "google_cloud_run_service" "default" {
    name     = "my-cloud-run-service"
    location = var.region

    template {
        spec {
            containers {
                image = var.container_image #This will be given in the console by the user.
            }
        }
    }

    traffic {
        percent = 100
        latest_revision = true
    }
}