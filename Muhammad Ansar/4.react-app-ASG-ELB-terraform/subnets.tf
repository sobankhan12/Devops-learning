resource "aws_subnet" "dev-vpc-public-subnet-1" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "dev-vpc-public-subnet-1"
  }
}
resource "aws_subnet" "dev-vpc-public-subnet-2" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "dev-vpc-public-subnet-2"
  }
}