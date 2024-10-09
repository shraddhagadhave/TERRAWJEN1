terraform {
  backend "s3" {
    bucket = "demo-bucket-80"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
    
  }
}