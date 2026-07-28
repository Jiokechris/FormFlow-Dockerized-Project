#############################################################
# EC2 Public IP
#############################################################

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.formflow.public_ip
}

#############################################################
# EC2 Public DNS
#############################################################

output "instance_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.formflow.public_dns
}

#############################################################
# SSH Command
#############################################################

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i capstone-group2-key.pem ubuntu@${aws_instance.formflow.public_ip}"
}

#############################################################
# Application URL
#############################################################

output "application_url" {
  description = "Application URL"
  value       = "http://${aws_instance.formflow.public_ip}"
}

#############################################################
# VPC ID
#############################################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.formflow.id
}

#############################################################
# Public Subnet ID
#############################################################

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

#############################################################
# Security Group ID
#############################################################

output "security_group_id" {
  description = "EC2 Security Group ID"
  value       = aws_security_group.formflow.id
}

#############################################################
# EC2 Instance ID
#############################################################

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.formflow.id
}