##Input Variables

#variable definitions for environment configuration
variable "Environment" {
    description = "The environment for the resources"
    type        = string
    default     = "testing"
  
}

#variable for environment name
variable "env_name" {
    description = "The name of the environment"
    type        = string
    default     = "TestEnv"
  
}

#variable for AMI ID and instance type
variable "ami_id" {     

    description = "The AMI ID for the EC2 instance"
    type        = string
    default     = "ami-093a7f5fbae13ff67" # Example AMI ID, replace with a valid one for your region
  
}


#variable for instance type     
variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
    default     = "t2.micro"
  
}


##Local Variables

#local values for resource naming
 
locals {
    bucket_name = "my-unique-${var.Environment}-bucket-123456"
    vpc_name    = "${var.Environment}-VPC"
    instance_name = "${var.Environment}-Instance"
  
}


##Output Variables

#output for S3 bucket name
output "s3_bucket_name" {
    description = "The name of the S3 bucket"
    value       = aws_s3_bucket.test_bucket.bucket

}
#output for VPC ID
output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.test_vpc.id

}

    #output for EC2 instance ID
    output "ec2_instance_id" {  
        description = "The ID of the EC2 instance"
        value       = aws_instance.test.id

    }
