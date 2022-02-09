locals {
  rand_str = random_string.random.result
  bucket_name = lower("${var.bucket_prefix}-${local.rand_str}")
}

resource "random_string" "lower" {
  length  = 4
  upper   = false
  lower   = true
  number  = false
  special = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket_prefix = local.bucket_name
  acl    = var.acl
  tags = var.tags
}
