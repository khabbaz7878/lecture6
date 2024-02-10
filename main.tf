provider "google" {
  project = var.project_id
}

module "storage_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 3.0"

  buckets = var.bucket_names
}
