provider "google" {
    project = "woven-proton-320317"
    region = "us-central1"
}

resource "google_compute_instance" "myvm" {
    name = "my-tf-vm2"
    machine_type = "f1-micro"
    zone = "us-central1-a"
    network_interface {
        network = "default"
        access_config{}
    }
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-10"
        }
    }
}