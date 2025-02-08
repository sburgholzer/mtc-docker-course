provider "aws" {
  region = var.aws_region
}

# Create ECR repositories for each service
resource "aws_ecr_repository" "repositories" {
  for_each             = toset(["dev1", "nodered", "influxdb", "grafana", "postgres"])
  name                 = each.key
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

# Add lifecycle policy to each repository
resource "aws_ecr_lifecycle_policy" "cleanup_policy" {
  for_each   = aws_ecr_repository.repositories
  repository = each.value.name

  policy = jsonencode({
    rules = [{
      rulePriority = 1
      description  = "Keep last 5 images"
      selection = {
        tagStatus   = "untagged"
        countType   = "imageCountMoreThan"
        countNumber = 5
      }
      action = {
        type = "expire"
      }
    }]
  })
}

# Output the repository URLs
output "repository_urls" {
  value = {
    for repo in aws_ecr_repository.repositories :
    repo.name => repo.repository_url
  }
}
