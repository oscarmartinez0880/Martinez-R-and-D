terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source = "hashicorp/archive"
    }
    null = {
      source = "hashicorp/null"
    }
  }
}

provider "aws" {
  ### Use env vars for auth, Do not populate credentials or credential files
  region = "us-east-1"
  alias  = "marketing_site-dev-use1"
  assume_role {
    role_arn = "arn:aws:iam::204364282870:role/CFAccessRole"
  }
}