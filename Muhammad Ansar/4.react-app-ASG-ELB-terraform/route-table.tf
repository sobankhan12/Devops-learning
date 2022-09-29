resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.dev-vpc.id

   route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.dev-vpc-igw.id}"
    }

    tags = {
        Name = "dev-vpc-public-route-table"
    }


  
}
resource "aws_route_table_association" "public-route-1" {
    subnet_id = "${aws_subnet.dev-vpc-public-subnet-1.id}"
    route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "public-route-2" {
    subnet_id = "${aws_subnet.dev-vpc-public-subnet-2.id}"
    route_table_id = "${aws_route_table.public-route-table.id}"
}