resource "aws_launch_template" "dves" {
  name_prefix            = "dves"
  image_id               = "ami-04f767d954fe2d2d1"
  instance_type          = "t2.micro"
  key_name               = "prd"
  vpc_security_group_ids = [aws_security_group.dves.id]
  user_data              = base64encode(file("./dves.sh"))
  iam_instance_profile {
    name = aws_iam_instance_profile.dves.name
  }
}