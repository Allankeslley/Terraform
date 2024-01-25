resource "aws_lb_target_group" "dves" {
  name     = "dves"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.dves.id
}
