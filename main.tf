variable "region" {}
variable "project_id" {}
variable "credentials" {}

provider "google" {
  credentials = var.credentials
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }

  network_interface {
    network = var.network
    access_config {}
  }
}
