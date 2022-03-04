provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "ankityadav-s3" {
  bucket_prefix = var.bucket_prefix
  tags = var.tags
}

resource "aws_s3_bucket_acl" "ankityadav" {
  bucket = aws_s3_bucket.chiranjeeviam-s3.id
  acl    = var.acl
}
resource "aws_s3_bucket_versioning" "versioning_ankityadav" {
  bucket = aws_s3_bucket.chiranjeeviam-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}


