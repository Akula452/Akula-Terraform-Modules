variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "region" {
  description = "The AWS region where the S3 bucket will be created."
  type        = string
}

variable "acl" {
  description = "The access control list for the S3 bucket."
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the S3 bucket."
  type        = map(string)
  default     = {}
}