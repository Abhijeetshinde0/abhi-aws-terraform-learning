#################################################
# NETWORK REMOTE STATE
#################################################

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "bucket-s3-terraform-01" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc-endpoints-demo/terraform.tfstate"
    region = "ap-south-1"
  }
}