# Create bucket resource
resource "google_storage_bucket" "bucket" {
  for_each = toset(var.bucket_names)

  name          = "my-bucket-${each.key}"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true
}
