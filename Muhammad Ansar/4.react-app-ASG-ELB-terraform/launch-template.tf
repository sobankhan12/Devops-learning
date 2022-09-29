# resource "aws_launch_configuration" "web" {
#   name_prefix = "web-"

#   image_id = "ami-0e472ba40eb589f49" 
#   instance_type = "t2.micro"
#   key_name = "aws3"

#   security_groups = [ "${aws_security_group.ec2-sg.id}" ]
#   associate_public_ip_address = true
#   user_data = "${file("data.sh")}"

#   lifecycle {
#     create_before_destroy = true
#   }
# }
resource "aws_launch_template" "web" {
  name_prefix = "web-"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 8
    }
  }

  
   image_id = "ami-0e472ba40eb589f49" 
   instance_type = "t2.micro"
   key_name = "aws3"

  #associate_public_ip_address = true
  network_interfaces {
    associate_public_ip_address = true
    security_groups = ["${aws_security_group.ec2-sg.id}"]

  }
   user_data = filebase64("data.sh")
   #user_data = "${file("data.sh")}"
}
