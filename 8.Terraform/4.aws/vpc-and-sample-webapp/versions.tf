terraform {
  required_version="~>0.14.8"
  required_providers {
      aws={
          source = "hashicorp/aws"
          version = "3.35.0"
      }
  }
}
provider "aws" {
    profile="default"
    region="us-east-1"
    # access_key = "value"
    # secret_key = "value"
}
# access_key_id=AKIAQYPQ3CVMHTRKLRJR
# secret_access_key_id=sNWEaq3zmBV4WPyLgNxww9Ijj6nasQyqzXWvjwFJ