variable "s3_bucket_name" {
  type        = string
  description = "S3 bucket name for image uploads"
}

variable "lambda_function_name" {
  type        = string
  description = "Name for the Lambda function"
}

variable "lambda_package_path" {
  type        = string
  description = "Path to the zipped Lambda deployment package"
}
