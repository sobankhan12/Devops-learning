resource "aws_s3_bucket" "mybuckets" {
    for_each = {
        dev="my-dapp-bucket"
        qa="my-qapp-bucket"
        stage="my-sapp-bucket"
        prod="my-papp-bucket"
    }
    bucket = "${each.key}-${each.value}"
    acl = "private"
    tags = {
      Name = "${each.key}-${each.value}"
      Environment=each.key
      eachValue=each.value
    }
  
}
resource "aws_iam_user" "my-users" {
      for_each = toset([ "bilal","asad","wali","noman" ])
      name=each.key
}