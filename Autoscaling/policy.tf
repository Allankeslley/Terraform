resource "aws_iam_role_policy" "dves" {
  name   = "dves"
  role   = aws_iam_role.dves.id
  policy = file("./s3.json")
}