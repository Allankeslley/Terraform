terraform {
  backend "s3" {
    bucket = "dves-state"
    key    = "teste"
    region = "us-east-2"
  }
}