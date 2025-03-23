resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket-${random_string.suffix.result}"
  
  # Use object ownership instead of ACL
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}
