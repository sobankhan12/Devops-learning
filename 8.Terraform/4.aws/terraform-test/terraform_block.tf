terraform {
  required_version="~> 3.1"
  required_providers{
       aws={
           source="hashicorp/aws"
          version="~> .13"
       }
  }
  backend "s3" {
      bucket="myfirstbucket"
      key="key of my bucket"
      region="us-east-1"
      
  }
  experiments = [ examples ]
  provider_meta "my-provider" {
    hello="world"    
  }
}
provider "aws" {
    region = "us-east-1"
    profile = "default"
}
resource "aws_instance" "demo-ec2" {
   ami="ami of id"
   type="t2.micro"  
}
