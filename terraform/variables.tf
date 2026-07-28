variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "project_name" {
  description = "capstone-group2"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone_1" {
  type = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "instance_type" {
  type = string
}

variable "github_repository" {
  description = "GitHub repository URL"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}