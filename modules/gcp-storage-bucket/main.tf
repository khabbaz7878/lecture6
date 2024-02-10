provider "google" {
  version = "~> 3.0"
}

variable "name" {
  type        = string
  description = "The name of the storage bucket."
}

resource "google_storage_bucket" "bucket" {
  name          = var.name
  location      = "US"
  storage_class = "STANDARD"
}
