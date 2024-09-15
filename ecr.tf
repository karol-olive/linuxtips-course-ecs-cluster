resource "aws_ecr_repository" "main" {
  name         = format("%s-cluster/chip", var.project_name)
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
}
