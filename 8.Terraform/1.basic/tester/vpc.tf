resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "dev-vpc"
  }
}
resource "aws_subnet" "dev-vpc-public-subnet-1" {
  vpc_id                  = aws_vpc.dev-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}
resource "aws_internet_gateway" "dev-vpc-igw" {
  vpc_id = aws_vpc.dev-vpc.id
}
resource "aws_route_table" "dev-vpc-public-route-table" {
  vpc_id = aws_vpc.dev-vpc.id

}
resource "aws_route" "dev-vpc-public-route" {
  route_table_id         = aws_route_table.dev-vpc-public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev-vpc-igw.id

}
resource "aws_route_table_association" "name" {
  subnet_id      = aws_subnet.dev-vpc-public-subnet-1.id
  route_table_id = aws_route_table.dev-vpc-public-route-table.id
}
resource "aws_security_group" "dev-vpc-sg" {
  name        = "vpc-dev-default-sg"
  description = "this is default sg of dev-vpc"
  vpc_id      = aws_vpc.dev-vpc.id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

