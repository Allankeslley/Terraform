terraform {
  backend "s3" {
    bucket = "us-west-2-aldebaran-dev-s3-remote-state"
    region = "us-west-2"
  }
}