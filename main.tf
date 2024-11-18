terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "google" {
  project = var.source_project
  region  = var.region
  zone    = var.zone
}

provider "google" {
  alias   = "destination"
  project = var.destination_project
  region  = var.region
  zone    = var.zone
}

# Criação da imagem no projeto de origem
resource "google_compute_image" "vm_image" {
  for_each       = var.vms
  name           = "${each.key}-image"
  source_disk    = "projects/${var.source_project}/zones/${var.zone}/disks/${each.value}"
  storage_locations = [var.region]
  project        = var.source_project
}

# Criação da VM no projeto de destino
resource "google_compute_instance" "destination_vm" {
  provider = google.destination
  for_each = var.vms

  name         = each.key
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = google_compute_image.vm_image[each.key].self_link
    }
  }

  network_interface {
    network    = "default"
    access_config {}
  }

  metadata = {
    startup-script = var.startup_script
  }

  project = var.destination_project
}
