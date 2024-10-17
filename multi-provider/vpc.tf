# Resource Block to Create VPC in us-east-1 which uses default provider
resource "aws_vpc" "vpc-us-east-1" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "Name" = "vpc-us-east-1"
  }
}

#this resource belongs to deploy on india region
# Resource Block to Create VPC in ap-south-1
resource "aws_vpc" "vpc-ap-south-1" {
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-south-1
  tags = {
    "Name" = "vpc-ap-south-1"
  }
}