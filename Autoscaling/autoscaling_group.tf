resource "aws_autoscaling_group" "glog" {
  name               = "two"
  availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  target_group_arns  = [aws_lb_target_group.end.arn]
  launch_template {
    id      = aws_launch_template.log.id
    version = aws_launch_template.log.latest_version
  }
}