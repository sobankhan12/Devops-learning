resource "aws_eip" "my-eip" {
  instance = aws_instance.mynaem.id
  vpc      = true
  depends_on = [
    aws_internet_gateway.dev-vpc-igw
  ]
}