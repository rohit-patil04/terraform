resource "aws_s3_bucket" "test_bucket" {
  bucket = local.bucket_name

  tags = {
    Name        = "${var.env_name}-Bucket"
    Environment = var.Environment
  }
  
}

resource "aws_vpc" "test_vpc" {
    cidr_block = "10.0.0.0/16"
        

    tags = {
        Name = "${var.env_name}-VPC"
        Environment = var.Environment
    }
     
}

resource "aws_instance" "test" {
    ami           = var.ami_id # Example AMI ID, replace with a valid one for your region
    instance_type = var.instance_type
    

    tags = {
        Name = "${var.env_name}-Instance"
        Environment = var.Environment
    }
  
}
