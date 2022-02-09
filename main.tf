locals {
  bucket_name = lower("${var.bucket_prefix}-${random_string.random.result}")
}

resource "random_string" "random" {
  length = 4
  special = true
  override_special = "/@£$"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket_prefix = local.bucket_name
  acl    = var.acl
  tags = var.tags
}
