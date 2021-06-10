module "instances-gcp" {
  source           = "./modules/instance-group"
  image_project_id = var.image_project_id
  family           = var.family
  instance_name    = var.instance_name
  instance_type    = var.instance_type
  region           = var.region
  zone             = var.zone
  instance_size    = var.instance_size
}