resource "aws_lb" "dves" {
  name               = "dves"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.dves.id]
  subnets            = [data.aws_subnet.dvesc.id, data.aws_subnet.dvesb.id, data.aws_subnet.dvesa.id]
  #enable_deletion_protection = true
}