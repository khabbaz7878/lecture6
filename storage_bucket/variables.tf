# storage_bucket/variables.tf

# Bucket name
variable "bucket_name" {
  type = string
}

# Bucket location 
variable "location" {
  type    = string
  default = "US"
}

# Storage class
variable "storage_class" {
  type    = string
  default = "STANDARD" 
}
