terraform {
    backend "s3" { # Define a remote bucket (AWS S3)
    bucket = "buddytasks3" # Set your bucket's name
    key    = "syb/obd/dev/terraform.tfstate"         # Set the bucket key
    region = "ap-south-1"     # Set the region where the bucket exists
  }
}