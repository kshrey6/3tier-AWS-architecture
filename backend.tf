terraform {
    backend "s3" { # Define a remote bucket (AWS S3)
    bucket = "test-syn-bucket-terraform1" # Set your bucket's name
    key    = "tfstate"         # Set the bucket key
    region = "us-east-1"     # Set the region where the bucket exists
  }
}