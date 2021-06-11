locals {
  user_data = <<EOF
#!/bin/bash
echo ""
echo "This machine was created with terraform and custom module"
echo ""
EOF
}

resource "aws_instance" "aws_ec2" {
  ami                         = var.ami_instance
  instance_type               = var.instance_type
  associate_public_ip_address = true
  user_data_base64            = base64encode(local.user_data)
  root_block_device {
      volume_type = "gp2"
      volume_size = var.ec2_size
  }
}