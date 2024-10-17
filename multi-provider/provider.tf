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

# Provider-2 for (India)
provider "aws" {
  region = "ap-south-1"
  profile = "default"
  alias = "aws-south-1"
}
