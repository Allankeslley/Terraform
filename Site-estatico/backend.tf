terraform {
  backend "s3" {
    bucket = "dves-state-virginia"
    key    = "ste"
    region = "us-east-1"
  }
}