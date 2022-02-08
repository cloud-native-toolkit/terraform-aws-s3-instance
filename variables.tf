variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "s3-bucket"
}

variable "acl" {
    type        = string
    description = "(Optional) The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "swew"
        terraform   = "true"
    }
}

variable "access_key" {
    default = "AWS Access key"
    description= " Refer https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html"
}

variable "secret_key" {
    default = "AWS Secret key"
    description= " Refer https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html"
 }
    
variable "region" {
    default = "region"
}
