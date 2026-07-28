provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

data "http" "my_ip" {
  url = "https://checkip.amazonaws.com/"
}