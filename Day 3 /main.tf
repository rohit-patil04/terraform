#creating a S3 bucket 

resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "my-tf-test-bucket-12345"


  tags = {
    Name        = "My S3 bucket"
    Environment = "Testing Env"
  }


}
