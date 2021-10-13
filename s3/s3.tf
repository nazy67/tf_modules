resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  acl    = var.is_acl

  # # Lifecycle rule
  # lifecycle_rule {
  #   id      = "log"
  #   prefix = "log/"
  #   enabled = true

  #   tags = {
  #     rule      = "log"
  #     autoclean = "true"
  #   }

  #   expiration {
  #     days = 90
  #   }
  # }

  # lifecycle_rule {
  #   id      = "images"
  #   prefix  = "images/"
  #   enabled = true

  #   transition {
  #     days          = 90
  #     storage_class = "GLACIER"
  #   }
  # }

  tags = merge(
    local.common_tags,
    {
      Name = "${var.env}_s3_main"
    }
  )
}  

resource "aws_s3_bucket_public_access_block" "main" {
  bucket                  = aws_s3_bucket.main.id
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
}