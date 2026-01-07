terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "satya-jan26-terraform"
    key = "dev/satya/terraform.tfsate"
    encrypt = true
    region = "us-west-1"
    dynamodb_endpoint = "satya-locking-table1"

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
