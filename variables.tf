variable "project_id" {
  description = "The ID of the Google Cloud project"
  }

variable "region" {
  description = "The region to create the buckets in"
  }

variable "bucket_names" {
  description = "List of bucket names"
  type        = list(string)
}
