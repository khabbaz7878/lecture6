provider "google" {
  project = "speedy-toolbox-360600"
  region  = "us-central1"
}

module storage_bucket {
  source       = "./storage_bucket"
  project_id   = "speedy-toolbox-360600"
  region       = "us-central1"
  bucket_names = ["bucket1", "bucket2", "bucket3", "bucket4", "bucket5"]
}


