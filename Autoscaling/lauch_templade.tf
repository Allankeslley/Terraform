resource "aws_launch_template" "dves" {
  name_prefix            = "dves"
  image_id               = var.image_id
  instance_type          = var.instance_type
  key_name               = "prd"
  vpc_security_group_ids = [aws_security_group.dves.id]
  user_data              = base64encode(file("./File/dves.sh"))
  iam_instance_profile {
    name = aws_iam_instance_profile.dves.name
  }
}