provider "google" {
  project = "<speedy-toolbox-360600>"
  region  = "us-central1"
}

module "gcs_buckets" {
  source = "terraform-google-modules/cloud-storage/google//modules/buckets"
  version = "~> 3.0"

  for_each = toset(["bucket-1", "bucket-2", "bucket-3", "bucket-4", "bucket-5"])

  name = "${each.value}-${format("%02d", index(tolist(keys(var.buckets)), each.value))}"
}

output "bucket_urls" {
  value = values(module.gcs_buckets)[*].url
}
