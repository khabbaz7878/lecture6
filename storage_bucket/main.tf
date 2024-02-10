# storage_bucket/main.tf

# Define bucket resource
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class
  force_destroy = true
}




