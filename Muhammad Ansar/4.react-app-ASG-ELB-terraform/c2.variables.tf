variable "aws_region" {
  description = "aws region will be defined"
  type        = string
  default     = "us-east-1"

}
variable "aws_vpc_cidr" {
  description = "aws vpc cidr block"
  default       = "10.0.0.0/16"

  
}
variable "ec2_instance_ami_id" {
  description = "ami id of ec2 instance"
  type        = string
  default     = "ami-04505e74c0741db8d"

}
variable "ec2_instance_type" {
  description = "the type of ec2 instance"
  type        = string
  default     = "t2.micro"
}
variable "subnet_id" {
  description = "subnet id where our application"
  type        = string
  #default     = "subnet-0bc683251c5bd7e52"
  default = "subnet-0de0b1987190731ac"
}
variable "vpc_security_group" {
  description = "the security group for ports and ips "
  type        = string
  default     = "sg-004ff1bff3d6f10ca"

}
variable "key_name" {
  description = "private key of your current aws region for ssh "
  type        = string
  default     = "nvg"

}

