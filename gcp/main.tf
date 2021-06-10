module "instances-gcp" {
  source                  = "./modules/instance-group"
  image_project_id        = var.image_project_id
  family                  = var.family
  instance_name           = var.instance_name
  instance_type           = var.instance_type
  disk_size_gb            = var.disk_size_gb
  region                  = var.region
  zone                    = var.zone
  instance_size           = var.instance_size
  nat_ip                  = var.nat_ip
  metadata_startup_script = data.template_file.init_script.rendered
}