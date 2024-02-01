data "aws_route53_zone" "dves" {
  name         = "dves.cloud"
  private_zone = false
}