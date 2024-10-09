provider "aws" {
    region = "us-east-1"
  
}
resource "aws_s3_bucket" "my-demo-bucket" {
    bucket = "demo-bucket-80"
  
}
resource "aws_s3_bucket_versioning" "s3version" {
    bucket = aws_s3_bucket.my-demo-bucket.id
    versioning_configuration {
      status = "Enabled"
    }
  
}