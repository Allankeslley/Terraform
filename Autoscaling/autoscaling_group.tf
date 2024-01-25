resource "aws_autoscaling_group" "dves" {
  name               = "dves"
  availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 0
  target_group_arns  = [aws_lb_target_group.dves.arn]
  launch_template {
    id      = aws_launch_template.dves.id
    version = aws_launch_template.dves.latest_version
  }
}