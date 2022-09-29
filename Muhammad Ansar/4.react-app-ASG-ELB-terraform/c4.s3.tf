# resource "aws_s3_bucket" "tf-state-bucket" {
#   bucket = "soban252-tf-state-bucket2"

#   tags = {
#     Name        = "soban252-tf-state-bucket2"
#     Environment = "dev"
#   }

# }
# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.tf-state-bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }