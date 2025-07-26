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
    Project = var.project_name
  }
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "java-app"
}

variable "environment" {
  description = "Environment tag for ECR"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name tag for ECR"
  type        = string
  default     = "JavaWebCalculator"
}

output "repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.java_app_repo.repository_url
}
output "repository_name" {
  description = "Name of the ECR repository"
  value       = aws_ecr_repository.java_app_repo.name
}
output "repository_id" {
  description = "ID of the ECR repository"
  value       = aws_ecr_repository.java_app_repo.id
}
