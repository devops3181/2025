resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket-${random_string.suffix.result}"
  
  
}
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}
terraform {
  backend "s3" {
    bucket         = "terraform-bucket-98"
    key            = "s3/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "Terraform-Test"  # Optional, used for state locking
  }
}
