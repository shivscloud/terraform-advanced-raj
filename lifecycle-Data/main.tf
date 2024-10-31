# Resources Block
# Resource-1: Create VPC
resource "aws_vpc" "vpc-dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = var.vpc_name
  }

/*
  lifecycle {
    ignore_changes = all
    #prevent_destroy = true  # Stops to destroy the resource while applying
    
  }
 */ 

}

variable "vpc_name" {
  description = "I'm gonna create vpc using varibles"
  type        = string
  default     = "vpc-demo"
  #sensitive   = true
}


data "aws_vpc" "selected" {
  id = "vpc-0a79c4c8f0741c409"
}

# Resource-2: Create Subnets
resource "aws_subnet" "testdatasubnet" {
  vpc_id                  = data.aws_vpc.selected.id
  cidr_block              = "172.31.48.0/20"
  availability_zone       = "ap-south-1a"
}

output "testvaule" {
  value = data.aws_vpc.selected.cidr_block
}