
resource "aws_s3_bucket" "bucket" {
  bucket = "tf-test-bucket-1448859645"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}