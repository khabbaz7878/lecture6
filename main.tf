# Configure provider 
provider "google" {
  project = "speedy-toolbox-360600"
  region  = "us-central1" 
}

module "buckets" {
  source = "./modules/gcp-bucket"
  
  bucket_names = ["1", "2", "3", "4", "5"]
}
