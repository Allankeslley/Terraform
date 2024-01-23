resource "aws_iam_role_policy_attachment" "example_attachment" {
  role       = aws_iam_role.guns_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}