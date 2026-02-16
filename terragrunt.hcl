include "terraform/modules/aws/s3"

inputs = {
  bucket_name = "my-s3-bucket-${local.environment}"
  region      = "us-west-2"
}

dependency "s3" {
  config_path = "../modules/aws/s3"
}