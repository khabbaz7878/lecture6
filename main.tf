module "storage_buckets" {
  source = "./storage_bucket"

  bucket_name_suffix = ["1", "2", "3", "4", "5"]
}
