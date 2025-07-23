provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "react-secure-ci-bucket-${random_id.id.hex}"
  acl    = "public-read"  # Intentional misconfig
}

resource "random_id" "id" {
  byte_length = 4
}
