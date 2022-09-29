# Creating Internet Gateway 
resource "aws_internet_gateway" "dev-vpc-igw" {
  vpc_id = "${aws_vpc.dev-vpc.id}"
}
