resource "aws_instance" "my-ec2-server" {
    ami = "ami-0742b4e673072066f"
    key_name = "vpc.pem"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.vpc-dev-sg-for-app.id ]
    subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
     user_data = <<-EOF
      #! /bin/bash
      sudo yum update -y
      sudo yum install httpd -y
      sudo systemctl enable httpd
      sudo systectl start httpd
      echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
     EOF
}