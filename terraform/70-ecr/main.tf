resource "aws_ecr_repository" "simpletimeservice" {
  name                 = "${var.project_name}-simpletimeservice"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

