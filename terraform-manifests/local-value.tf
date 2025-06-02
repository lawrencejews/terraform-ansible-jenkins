# Define Local Values in Terraform

locals {
  owners = var.software_divsion
  environment = var.environment
  name = "${var.software_divsion}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
} 