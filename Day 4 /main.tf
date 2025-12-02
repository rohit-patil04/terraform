resource "aws_s3_bucket" "S3_bucket_demo" {
  bucket = "my-tf-test-buroniiiiiicket12345"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"

  }
  
}
