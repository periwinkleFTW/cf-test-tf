terraform {
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "gcp-infra"

  #   workspaces {
  #     name = "tf-gcp"
  #   }
  # }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "tf-test-357717"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "tf-test-key.json"
}

# Get a random 4 character string to attach to resources' names
resource "random_id" "id" {
  byte_length = 2
}
