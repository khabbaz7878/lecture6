variable "project_id" {
  description = "The ID of the GCP project where the storage buckets will be created"
  type        = string
}

variable "bucket_names" {
  description = "List of names for the storage buckets"
  type        = list(string)
  default     = ["bucket-1", "bucket-2", "bucket-3", "bucket-4", "bucket-5"]
}
