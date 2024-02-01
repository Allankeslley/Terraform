resource "aws_acm_certificate" "dves" {
  domain_name       = "*.${var.domain}"
  validation_method = "DNS"
}