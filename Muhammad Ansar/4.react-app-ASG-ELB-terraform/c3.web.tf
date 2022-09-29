# resource "aws_instance" "my-ec2" {
#   ami                    = var.ec2_instance_ami_id
#   instance_type          = var.ec2_instance_type
#   key_name               = var.key_name
#   subnet_id              = var.subnet_id
#   vpc_security_group_ids = ["${var.vpc_security_group}"]
#   user_data              = file("react-install.sh")

#   tags = {
#     "Name" = "web1"
#   }
#   lifecycle {
#     create_before_destroy = true
#   }

# }