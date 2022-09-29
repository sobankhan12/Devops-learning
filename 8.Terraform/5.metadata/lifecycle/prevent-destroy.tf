resource "aws_instance" "ec2-instance" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    
    tags = {
      "Name" = "web"
    }
    lifecycle {
      prevent_destroy = true
    }
  
}