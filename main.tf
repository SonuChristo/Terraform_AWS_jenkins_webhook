provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "sonuchristo455" # Replace with your desired bucket name

  # Uncomment the following block to enable versioning
  # versioning {
  #   enabled = true
  # }

  # Uncomment the following block to apply a bucket policy
  # policy = <<EOF
  # {
  #   "Version": "2012-10-17",
  #   "Statement": [
  #     {
  #       "Sid": "AllowPublicRead",
  #       "Effect": "Allow",
  #       "Principal": "*",
  #       "Action": [
  #         "s3:GetObject"
  #       ],
  #       "Resource": "arn:aws:s3:::your-unique-bucket-name/*"
  #     }
  #   ]
  # }
  # EOF
}

output "sonuchristo455" {
  value = aws_s3_bucket.example_bucket.id
}
