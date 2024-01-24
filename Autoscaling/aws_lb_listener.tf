resource "aws_lb_listener" "west" {
  load_balancer_arn = aws_lb.west.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.end.arn
  }
}


resource "aws_lb_listener" "wes" {
  load_balancer_arn = aws_lb.west.arn
  port              = "443"
  protocol          = "HTTPS"
  certificate_arn   = aws_acm_certificate.dves.arn
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.end.arn
  }
}
