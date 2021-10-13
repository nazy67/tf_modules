resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  acl    = var.is_acl

  tags = var.tag_name
  }

resource "aws_s3_bucket_public_access_block" "main" {
  bucket                  = var.main_bucket_id
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.lock_public_policy
}