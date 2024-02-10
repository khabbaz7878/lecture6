# Configure provider 
provider "google" {
  project = "<PROJECT ID>"
  region  = "us-central1" 
}

module "buckets" {
  source = "./modules/gcp-bucket"
  
  bucket_names = ["1", "2", "3", "4", "5"]
}
