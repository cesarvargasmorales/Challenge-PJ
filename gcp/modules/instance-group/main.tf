data "google_compute_image" "centos7" {
  project = var.image_project_id
  family  = var.family
}
resource "google_compute_instance_template" "instance_template" {
  name_prefix  = "${var.instance_name}-${terraform.workspace}"
  machine_type = var.instance_type
  region       = var.region

  disk {
    source_image = data.google_compute_image.centos7.self_link
    type         = "PERSISTENT"
    disk_size_gb = var.disk_size_gb
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  metadata_startup_script = var.metadata_startup_script
}

resource "google_compute_instance_group_manager" "instance_group_manager" {
  name               = "${var.instance_name}-manager"
  base_instance_name = "${var.instance_name}-manager"
  zone               = var.zone
  target_size        = var.instance_size
  version {
    name              = "${var.instance_name}-manager-${terraform.workspace}"
    instance_template = google_compute_instance_template.instance_template.self_link
  }
}