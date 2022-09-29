# create instance
resource "aws_instance" "my-ec2-vm" {
    ami = var.ami_id
    instance_type = "t2.micro"
    key_name = "terraform-key"
    tags = {
      "Name" = "web-server"
    }
    user_data =<<-EOF
       #!/bin/bash
       sudo yum update -y
       sudo yum install httpd -y
       sudo systemctl enable httpd
       sudo systemctl start httpd
       echo "Hello first server is by soban khan ">> /var/www/html/index.html
      EOF
    vpc_security_group_ids = [ aws_security_group.allowssh.id,aws_security_group.allows-port.id ]
}