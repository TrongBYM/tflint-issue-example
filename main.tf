terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0, < 6.0"
    }
  }
  required_version = "~> 1.8, < 2.0"
}

module "my_ecr_repository" {
  source   = "./modules/custom_ecr"
  ecr_name = "%%%"  # Invalid ECR repository name
}
