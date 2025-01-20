terraform {
  backend "gcs" {
    bucket = "allex-terraform-gcp-state"
    prefix = "terraform/state/projects"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.16.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "6.16.0"
    }
  }
  required_version = "~>1.10.4 "
}

provider "google" {
}

provider "google-beta" {
}
