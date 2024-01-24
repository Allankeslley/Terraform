resource "aws_acm_certificate" "dves" {
  domain_name       = "*.dves.cloud"
  validation_method = "DNS"
}