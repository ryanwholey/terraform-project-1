terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "workspace-configs"
    key    = "terraform-project-1.tfstate"
    region = "us-east-2"
  }
}
