resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.vm}-playground"
  }
}

resource "aws_subnet" "subnet" {
  for_each          = var.subnet
  availability_zone = each.value["az"]
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = each.value["cidr"]

  tags = {
    Name = "${var.vm}-subnet-${each.value["az"]}"
  }
}

resource "aws_route_table" "route_table" {
  for_each = var.subnet
  vpc_id   = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "${var.vm}-route-table-${each.value["az"]}"
  }

}

resource "aws_route_table_association" "route_table_association" {
  for_each       = var.subnet
  subnet_id      = aws_subnet.subnet[each.key].id
  route_table_id = aws_route_table.route_table[each.key].id
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.vm}-internet-gateway"
  }
}

resource "aws_instance" "instance" {
  ami                    = "ami-04e5276ebb8451442"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet["subnet2"].id
  vpc_security_group_ids = [aws_security_group.security_group.id]

  tags = {
    Name = "${var.vm}-instance"
  }
}

resource "aws_security_group" "security_group" {
  name   = "${var.vm}-ssh"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}