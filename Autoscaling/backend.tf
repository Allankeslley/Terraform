terraform {
  backend "s3" {
    bucket = "dves-state"
    key    = "scali"
    region = "us-east-2"
  }
}