resource "aws_route53_record" "www-dev" {
  zone_id = "Z04922282LOJDMBEM00D"
  name    = "jatr.dves.cloud"
  type    = "CNAME"
  ttl     = 60
  records = [aws_lb.west.dns_name]
}
