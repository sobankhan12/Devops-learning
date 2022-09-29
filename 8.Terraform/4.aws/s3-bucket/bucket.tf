resource "random_pet" "pet2" {
    prefix = "Mr"
    length=4
    separator = "-"  
}
resource "aws_s3_bucket" "soban-bucket" {
    bucket = random_pet.pet2.id
    acl = "public-read"

  
}