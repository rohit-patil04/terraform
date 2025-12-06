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
