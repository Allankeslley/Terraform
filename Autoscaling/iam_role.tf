resource "aws_iam_role" "guns_role" {
  name               = "gunsrole"
  assume_role_policy = (file("./arq.json"))
}
resource "aws_iam_instance_profile" "exemplo_profile" {
  name = "exemplo_profile"
  role = aws_iam_role.guns_role.name
}