provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "java_web_calculator" {
  name = var.repository_name

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = "MUTABLE"

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}
