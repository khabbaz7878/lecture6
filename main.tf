# Define the Google Cloud provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Create the Google Cloud Storage buckets
resource "google_storage_bucket" "buckets" {
  count       = length(var.bucket_names)
  name        = var.bucket_names[count.index]
  location    = var.region
}
