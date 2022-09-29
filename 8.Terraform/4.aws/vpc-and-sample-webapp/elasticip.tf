# Resource-9: Create Elastic IP
resource "aws_eip" "my-eip" {
  instance = aws_instance.my-ec2-server.id
  vpc = true
  depends_on = [ aws_internet_gateway.vpc-dev-intergateway ]
}
