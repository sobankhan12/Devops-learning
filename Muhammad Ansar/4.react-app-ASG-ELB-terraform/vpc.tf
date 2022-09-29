resource "aws_vpc" "dev-vpc" {
    cidr_block ="${var.aws_vpc_cidr}"
    instance_tenancy= "default"
    tags = {
      "Name" = "dev-vpc"
    }
  
}