terraform {
  backend "s3" {
    bucket = "bucket-s3-terraform-01" # this must be your s3 bucket name
    key    = "Networking/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
    
  }
}
