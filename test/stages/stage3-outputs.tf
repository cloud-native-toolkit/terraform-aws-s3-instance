
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        s3_bucket_id = module.aws-s3-instance.s3_bucket_id
        s3_bucket_arn = module.aws-s3-instance.s3_bucket_arn
        s3_bucket_bucket_domain_name = module.aws-s3-instance.s3_bucket_bucket_domain_name
        s3_bucket_bucket_regional_domain_name = module.aws-s3-instance.s3_bucket_bucket_regional_domain_name
        s3_bucket_hosted_zone_id = module.aws-s3-instance.s3_bucket_hosted_zone_id
        s3_bucket_region = module.aws-s3-instance.s3_bucket_region
      })
    }
  }
}
