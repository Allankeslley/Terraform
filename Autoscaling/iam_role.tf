resource "aws_iam_role" "dves" {
  name               = "dves"
  assume_role_policy = (file("./arq.json"))

}
resource "aws_iam_instance_profile" "dves" {
  name = "dves"
  role = aws_iam_role.dves.name
}