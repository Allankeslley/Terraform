output "aws_vpc" {
  description = "vpc"
  value       = aws_vpc.vpc.id
}

output "aws_subnet" {
  description = "subnet"
  value       = [for sub in aws_subnet.subnet : sub.id]
}

output "aws_instance" {
  description = "instance"
  value       = aws_instance.instance.id
}
output "aws_security_group" {
  description = "security_group"
  value       = aws_security_group.security_group.id
}