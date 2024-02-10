module "storage_buckets" {
  source = "./storage_bucket"

  for_each = toset(["1", "2", "3", "4", "5"]) // Set of bucket names
  bucket_name = "my-bucket-${each.key}"
}

output "bucket_names" {
  value = [for bucket_key, bucket in module.storage_buckets : bucket.name]
}
