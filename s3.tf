resource "aws_s3_bucket" "prod_bucket" {
   bucket = "production-aitechslv-bucket"
   versioning {
     enabled = true
   }
   tags = {
     Name = "production-aitechslv-bucket"
     Environment = "production"
   }    
}


