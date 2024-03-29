module "gke_cluster" {
  source         = "https://github.com/Styre79/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket = "tf_bucket"
    prefix = "terraform/state"
  }
}