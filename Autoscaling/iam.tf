resource "aws_iam_role" "dves" {
  name               = "dves"
  assume_role_policy = (file("./File/arq.json"))

}
resource "aws_iam_instance_profile" "dves" {
  name = "dves"
  role = aws_iam_role.dves.name
}

resource "aws_iam_role_policy" "dves" {
  name   = "dves"
  role   = aws_iam_role.dves.id
  policy = file("./File/s3.json")
}