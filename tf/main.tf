terraform {
  required_providers {
    google = {
      source  = "hashicorp/google-beta"
      version = "4.44.1"
    }
  }
}

data "google_project" "project" {
  project_id = var.project_id
}

data "google_client_config" "default" {}

provider "google" {
  region  = var.region
  project = var.project_id
}