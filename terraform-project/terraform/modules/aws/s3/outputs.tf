resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.acl
  region = var.region

  tags = var.tags
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}