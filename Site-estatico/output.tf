output "s3_bucket_bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}
output "s3_bucket_bucket_id" {
  value = aws_s3_bucket.bucket.id
}
output "cloudfront_distribution_site_arn" {
  value = aws_cloudfront_distribution.site.arn
}
output "cloudfront_dcloudfront_distribution_site_domain_nameistribution_domain_name" {
  value = aws_cloudfront_distribution.site.domain_name
}
output "acm_certificate_dves_arn" {
  value = aws_acm_certificate.dves.arn
}
output "acm_certificate_dves_domain_validation_options" {
  value = aws_acm_certificate.dves.domain_validation_options
}