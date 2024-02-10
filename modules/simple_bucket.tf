module "bucket" {
  source  = "lecture6/modules/simple_bucket.tf"
  version = "~> 1.7"

  for_each = toset(["1", "2", "3", "4", "5"])

  name          = "my-bucket-${each.key}"
  project_id    = "<speedy-toolbox-360600>"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true
}
