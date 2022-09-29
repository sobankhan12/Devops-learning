resource "aws_vpc" "firstvpc" {
        cidr_block = "12.0.1.1/16"
        tags = {
          "Name" = "myvpc"
        }
}