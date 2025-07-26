output "repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.java_web_calculator.repository_url
}
output "repository_name" {
  description = "Name of the ECR repository"
  value       = aws_ecr_repository.java_web_calculator.name
}
output "repository_id" {
  description = "ID of the ECR repository"
  value       = aws_ecr_repository.java_web_calculator.id
}