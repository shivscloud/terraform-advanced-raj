resource "aws_s3_bucket" "prod_bucket" {
   bucket = "${var.s3_bucket_name}-bucketfordevopslearningap"
   versioning {
     enabled = true
   }
       
}


