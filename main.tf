

# Create the Google Cloud Storage buckets
resource "google_storage_bucket" "buckets" {
  count       = length(var.bucket_names)
  name        = var.bucket_names[count.index]
  location    = var.region
}
