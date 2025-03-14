terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
  backend "s3" {
    bucket = "81s-workspaces-demo"
    key = "workspaces-demo"
    region = "us-east-1"
    dynamodb_table = "81s-workspaces-demo"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}