provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  }

resource "google_compute_instance" "instance" {
  name         = "test"
  machine_type = "g1-small"

   tags = ["http-server"]

     boot_disk {
    initialize_params {
      image = "centos-7"
    }
  }

  network_interface {
    network = "default"

    access_config {}
      // Ephemeral IP
    }  
} 
