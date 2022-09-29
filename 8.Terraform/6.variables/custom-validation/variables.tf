variable "aws_region" {
    type = string
    default = "us-east-1"
    description = "my aws region is by defualt is us"
  
}
variable "ami_id" {
    type = string
    default = "ami-0742b4e673072066f"
    validation {
      condition=length(var.ami_id)>4 && substr(var.ami_id,0,4)=="ami-"
      error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
    }
    description = "my aws region is by defualt is us"
  
}
variable "e2_instance_type" {
    type = string
    default = "t2.micro"
    description = "ec2 type"
  
}

