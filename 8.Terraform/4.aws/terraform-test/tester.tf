terraform {
   required_providers{
       aws={
           source="hashicorp/aws"
       }
   }
}
provider "aws" {
    profile="default"
    region = "us-east-1"
}
resource "aws_instance" "ec2-demo" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
  
}