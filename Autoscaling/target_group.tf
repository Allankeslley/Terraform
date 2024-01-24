resource "aws_lb_target_group" "end" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0d7cc4eec0266c6d3"
}
