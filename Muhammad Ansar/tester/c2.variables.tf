variable "aws_Region" {
  type    = string
  default = "us-east-1"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-04505e74c0741db8d"
    us-east-2 = "ami-0fb653ca2d3203ac1"

  }

}