variable "bucket_name_suffix" {
  description = "Suffix for the storage bucket name"
}

variable "location" {
  description = "Location for the storage bucket"
  default     = "US"
}

resource "google_storage_bucket" "bucket" {
  name     = "my-bucket-${var.bucket_name_suffix}"
  location = var.location

  # Add other bucket configurations as needed
}
