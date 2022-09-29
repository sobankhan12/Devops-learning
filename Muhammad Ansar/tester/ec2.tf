data "aws_subnets" "my" {
  
}
data "aws_availability_zones" "name" {
  
}
data "aws_ami" "nam2e" {
    most_recent = true
    owners = [ "099720109477" ]
    filter {
     
     name = "name"
      values=["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
    filter {
      name="root-device-type"
      values=["ebs"]
    }
    filter {
      name="virtualization-type"
      values=["hvm"]
    }
    
  
}
output "MYANI" {
  value= data.aws_ami.nam2e
}
output "name" {
    value = data.aws_availability_zones.name.names[0]
  
}
output "subn" {
    value = data.aws_subnets.my.ids[0]
  
}
# resource "aws_instance" "web" {
#   instance_type = "t2.micro"
#   #subnet_id = data.aws_subnets.my.ids[1]
#   availability_zone = data.aws_availability_zones.name.names[1]
#   key_name      = "aws3"
#   ami           = lookup(var.AMIS, var.aws_Region)
#   tags = {
#     "Name" = "web"
#   }

# }