resource "google_compute_instance" "vm-instance" {

  for_each = var.Instance-Name
  name = each.value
  
  machine_type = "n2-standard-2"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "my-vpc-network"
    subnetwork = "subnetwork-1"
  }

  metadata_startup_script = "echo hi > /test.txt"
}