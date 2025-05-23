output "s3_bucket_name" {
  value = aws_s3_bucket.images.bucket
}

output "lambda_function_name" {
  value = aws_lambda_function.rekognition_lambda.function_name
}
