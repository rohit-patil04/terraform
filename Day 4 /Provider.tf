terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.23.0"
    }
  }
        }


# Configuration AWS 
provider "aws" {
region = "ap-southeast-1"

}
  
