# Resource Block
# Resource-1: Create vpc
resource "aws_vpc" "vpc-dev" {
   cidr_block = "10.0.0.0/16"
   tags = {
     "Name" = "vpc-dev"
   }  
}
#Create Subnet
resource "aws_subnet" "vpc-dev-public-subnet-1" {
    vpc_id = aws_vpc.vpc-dev.id
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true
    cidr_block = "10.0.1.0/24"
    tags = {
      "Name" = "vpc-dev-public-subnet-1"
    }

  
}
# Create Internet Gateway
resource "aws_internet_gateway" "vpc-dev-intergateway" {
    vpc_id = aws_vpc.vpc-dev.id
    tags = {
      "Name" = "vpc-dev-intergateway"
    }
  
}
# Create Route Table
resource "aws_route_table" "vpc-dev-aws-route-table" {
    vpc_id = aws_vpc.vpc-dev.id
    tags = {
      "Name" = "vpc-dev-aws-route-table"
    }
}
# Create Route in Route Table for Internet Access
resource "aws_route" "vpc-dev-public-route" {
    route_table_id = aws_route_table.vpc-dev-aws-route-table.id
    destination_cidr_block = "0.0.0.0/0"
    igateway_id = aws_internet_gateway.vpc-dev-intergateway.id

}
# Associate Route Table with Subnet
resource "aws_route_table_association" "vpc-dev-routable-association" {

  subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
  route_table_id = aws_route_table.vpc-dev-aws-route-table.id
}

# Create A security group
resource "aws_security_group" "vpc-dev-sg-for-app" {
    vpc_id = aws_vpc.vpc-dev.id
    description = "Dev VPC Default Security Group"
    ingress{
      description="Allow port 22"
      from_port=22
      to_port=22
      protocol="tcp"
      cidr_blocks=["0.0.0.0/0"]
    }
    ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all ip and ports outboun"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

  
