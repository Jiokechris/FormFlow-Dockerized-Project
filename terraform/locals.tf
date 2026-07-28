locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Group-2"
  }
}

locals {
  my_ip = "${trimspace(data.http.my_ip.response_body)}/32"
}