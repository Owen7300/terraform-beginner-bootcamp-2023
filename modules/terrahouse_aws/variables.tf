variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition     = can(regex("^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$", var.user_uuid))
    error_message = "User UUID must be in the format of a UUID (e.g., xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)"
  }
}


variable "s3_bucket_name" {
  description = "The name of the AWS S3 bucket"
  type        = string

  validation {
    condition = can(regex("^([a-zA-Z0-9.-]+)$", var.s3_bucket_name))
    error_message = "Invalid bucket name. The name must consist of letters, numbers, periods, or hyphens."
  }
}