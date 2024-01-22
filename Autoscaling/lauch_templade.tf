resource "aws_launch_template" "log" {
  name_prefix            = "log"
  image_id               = "ami-04f767d954fe2d2d1"
  instance_type          = "t2.micro"
  key_name               = "prd"
  vpc_security_group_ids = [aws_security_group.sgl.id]
}
