
resource "aws_instance" "amb-web" {
  ami           = "ami-04f767d954fe2d2d1"
  instance_type = "t2.micro"
  key_name      = "prd"
}
