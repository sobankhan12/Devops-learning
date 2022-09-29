resource "aws_instance" "mynaem" {
  ami             = "ami-0e1d30f2c40c4c701"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.dev-vpc-public-subnet-1.id
  security_groups = [aws_security_group.dev-vpc-sg.id]
  key_name        = "nvg"
  user_data       = <<-EOF
#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start  
sudo systemctl enable httpd
#echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" | sudo tee /var/www/html/index.html
echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
  EOF
  tags = {
    "Name" = "Web"
  }
}