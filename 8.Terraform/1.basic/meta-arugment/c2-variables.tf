# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type = string  
  default = "ami-04505e74c0741db8d"
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type = number
  default = 1
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}
