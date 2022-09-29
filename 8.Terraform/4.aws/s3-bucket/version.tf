terraform {
  required_version="~>0.14.8"
  required_providers{
      aws={
          source = "hashicorp/aws"
          version = "3.35.0"
      }
      random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}
provider "aws" {
    profile="default"
    region="us-east-1"
}
