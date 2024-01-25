data "aws_vpc" "dves" {
  id = "vpc-0d7cc4eec0266c6d3"
}
data "aws_route53_zone" "dves" {
  name         = "dves.cloud"
  private_zone = false
}
data "aws_subnet" "dvesc" {
  id = "subnet-095ea23112c199b78"
}
data "aws_subnet" "dvesb" {
  id = "subnet-093c8047c9583c8db"
}
data "aws_subnet" "dvesa" {
  id = "subnet-0d7894ffc50771b55"
}