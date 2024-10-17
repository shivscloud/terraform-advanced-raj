terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Provider-1 for us-east-1 (USA)
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
