
resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location
module storage_bucket {
  source       = "./storage_bucket"
  project_id   = "speedy-toolbox-360600"
  region       = "us-central1"
  bucket_names = ["bucket1", "bucket2", "bucket3", "bucket4", "bucket5"]
}

  # Add other bucket configurations as needed
}
