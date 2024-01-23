resource "aws_iam_role_policy" "batata_policy" {
  name   = "batata_policy"
  role   = aws_iam_role.guns_role.id
  policy = file("./s3.json")
}