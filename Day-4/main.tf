provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "zaff-TF" {
  instance_type = "t2.micro"
  ami = "ami-0dee22c13ea7a9a67" 
  subnet_id = "subnet-019ea91ed9b5252e7"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zaff-bkt" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
