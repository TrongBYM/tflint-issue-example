variable "ecr_name" {
  type    = string
}

# NOTE: The character "%" is not allowed in ECR repository names.

# tflint will catch this error
resource "aws_ecr_repository" "this" {
  name = var.ecr_name 
}

# tflint will catch this error
resource "aws_ecr_repository" "this_too" {
  name = "${var.ecr_name}-hello-world" 
}

# tflint will NOT catch this error
locals {
  ecr_name_abstraction = "${var.ecr_name}-hello-world"
}
resource "aws_ecr_repository" "this_three" {
  name = local.ecr_name_abstraction
}