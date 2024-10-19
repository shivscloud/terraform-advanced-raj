resource "aws_s3_bucket" "mys3bucket" {

  # for_each Meta-Argument
  for_each = {
    dev  = "cdp-my-dev-bucket"
    prod = "cdpmy-prod-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}