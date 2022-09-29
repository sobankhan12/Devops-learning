resource "aws_instance" "webserver"{
    ami="ami-0e1d30f2c40c4c701"
    instance_type="t2.micro"
}
