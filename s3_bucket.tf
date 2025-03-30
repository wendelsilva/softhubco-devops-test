resource "aws_s3_bucket" "localstack-s3" {
  bucket = "softhubco-devops-bucket"

  tags = {
    Name        = "Localstack Bucket"
    Environment = "staging"
  }
}