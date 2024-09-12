terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1" # eks module requires more than 5.38
    }
  }

  backend "s3" {
    bucket         = "daws14-state-dev"
    key            = "eks"
    region         = "us-east-1"
    dynamodb_table = "daws14-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}