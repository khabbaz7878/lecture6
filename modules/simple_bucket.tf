module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google//modules/simple_bucket"
  version = "~> 1.7"

  for_each = toset(["1", "2", "3", "4", "5"])

  name          = "my-bucket-${each.key}"
  project_id    = "<PROJECT ID>"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true
}
