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