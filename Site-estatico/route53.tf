resource "aws_route53_record" "dves" {
  zone_id = aws_route53_zone.dves_cloud.zone_id
  name    = "${var.sub_domain}.${var.domain}"
  type    = "CNAME"
  ttl     = 60
  records = [aws_cloudfront_distribution.site.domain_name]
}