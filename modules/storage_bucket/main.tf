variable "bucket_name" {
  description = "Name for the storage bucket"
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location

  # Add other bucket configurations as needed
}
