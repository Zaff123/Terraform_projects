terraform {
  backend "s3" {
    bucket         = "zaff-TF"
    key            = "zaff/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
