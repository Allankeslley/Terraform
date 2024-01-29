terraform {
  backend "s3" {
    bucket = "dves-state"
    key    = "ste"
    region = "us-east-2"
  }
}