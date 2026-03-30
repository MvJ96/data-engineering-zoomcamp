terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.25.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project = "terraform-demo-491517"
  region  = "northamerica-northeast2"
  #"us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-demo-111111-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}