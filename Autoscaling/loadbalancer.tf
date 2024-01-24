resource "aws_lb" "west" {
  name               = "west-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sgl.id]
  subnets            = ["subnet-095ea23112c199b78", "subnet-093c8047c9583c8db", "subnet-0d7894ffc50771b55"]
  #enable_deletion_protection = true
}
#resource "aws_lb_target_group" "end" {
#name     = "tf-example-lb-tg"
#port     = 80
#protocol = "HTTP"
#vpc_id   = "vpc-0d7cc4eec0266c6d3"
#}
