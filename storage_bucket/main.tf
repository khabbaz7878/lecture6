

resource "google_storage_bucket" "bucket" {
  name     = "my-bucket-${var.bucket_name_suffix}"
  location = var.location

  # Add other bucket configurations as needed
}
