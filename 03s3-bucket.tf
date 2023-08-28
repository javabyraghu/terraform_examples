resource "aws_s3_bucket" "my_bucket" {
  bucket = "raghu-public-bucket-009"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name = "My Public Terraform Bucket"
  }

}
