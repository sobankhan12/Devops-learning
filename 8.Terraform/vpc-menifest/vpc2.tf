resource "aws_vpc" "second-vpc" {
    cidr_block = "10.1.0.0/16"
    provider = aws.us-east-2
    tags = {
      "Name" = "second-vpc-in-ohio"
    }
  
}