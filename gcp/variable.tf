# Variables global
variable "project_id" {}
variable "region" {}

# Variables needed to create instance template and group-manager
variable "image_project_id" {}
variable "family" {}
variable "instance_name" {}
variable "instance_type" {}
variable "zone" {}
variable "instance_size" {}