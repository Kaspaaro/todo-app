# Here we will ask the user in the console to give the Google cloud project id.
variable "project_id" {
  description = "Project ID"
  type = string
}
# Defining the region value and the zone value defaultly.
variable "region" {
  description = "Resource region"
  default = "us-central1"
}
variable "zone" {
  description = "Zone config"
  default = "us-central1-c"
}
# Here we ask the user in the console for the docker.io image url.
variable "container_image" {
  description = "Container URL in container registry"
  type = string
}