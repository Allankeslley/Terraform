resource "aws_lb_listener" "dves" {
  load_balancer_arn = aws_lb.dves.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.dves.arn
  }
}


resource "aws_lb_listener" "dves1" {
  load_balancer_arn = aws_lb.dves.arn
  port              = "443"
  protocol          = "HTTPS"
  certificate_arn   = aws_acm_certificate.dves.arn
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.dves.arn
  }
}
