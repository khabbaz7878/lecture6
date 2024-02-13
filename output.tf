output "bucket_names" {
  value = google_storage_bucket.buckets[*].name
}
