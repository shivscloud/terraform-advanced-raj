terraform {
  backend "s3" {
    bucket = "terraformprodway"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
