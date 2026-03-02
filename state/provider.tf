terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "amar-s3-2nd-bucket"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "84s-remote-state"
  }
}

provider "aws" {
  # Configuration options
}