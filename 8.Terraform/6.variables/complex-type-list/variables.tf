variable "aws_region" {
    type = string
    default = "us-east-1"
    description = "my aws region is by defualt is us"
  
}
variable "ami_id" {
    type = string
    default = "ami-0742b4e673072066f"
    description = "my aws region is by defualt is us"
  
}
variable "e2_instance_type" {
    type = list(string)
    default = ["t2.mciro","t2.small","t3.micro"]
    description = "ec2 type"
  
}

