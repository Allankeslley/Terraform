resource "aws_lb_listener" "west" {
  load_balancer_arn = aws_lb.west.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.end.arn
  }
}