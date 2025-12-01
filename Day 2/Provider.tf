#provider configuration for AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the default AWS Provider
provider "aws" {
  region = "us-east-1"
}
