# Define the Google Cloud provider
provider "google" {
  project = var.project_id
  region  = var.region
}


variable "name" {
  type        = string
  description = "The name of the storage bucket."
}

resource "google_storage_bucket" "bucket" {
  name          = var.name
  location      = "US"
  storage_class = "STANDARD"
}
