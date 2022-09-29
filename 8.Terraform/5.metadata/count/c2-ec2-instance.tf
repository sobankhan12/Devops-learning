resource "aws_instance" "ec2-instance" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    count = 3
    tags = {
      "Name" = "web-${count.index}"
    }
  
}