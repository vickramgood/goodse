resource "aws_s3_bucket" "codepipeline" {
  #checkov:skip=CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
  #checkov:skip=CKV_AWS_52: "Ensure S3 bucket has MFA delete enabled"
  #checkov:skip=CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
  bucket = local.artifact_store.location
  acl    = "private"
  tags    = var.common_tags
}