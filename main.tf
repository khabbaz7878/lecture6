provider "google" {
  version = "~> 3.0"
}

module "storage_bucket_1" {
  source = "./modules/gcp-storage-bucket"

  name = "my-bucket-1"
}

module "storage_bucket_2" {
  source = "./modules/gcp-storage-bucket"

  name = "my-bucket-2"
}

module "storage_bucket_3" {
  source = "./modules/gcp-storage-bucket"

  name = "my-bucket-3"
}

module "storage_bucket_4" {
  source = "./modules/gcp-storage-bucket"

  name = "my-bucket-4"
}

module "storage_bucket_5" {
  source = "./modules/gcp-storage-bucket"

  name = "my-bucket-5"
}
