module "aws_ec2" {
  source        = "./modules/aws-instance"
  ami_instance  = var.ami_instance
  instance_type = var.instance_type
  ec2_size      = var.ec2_size
}