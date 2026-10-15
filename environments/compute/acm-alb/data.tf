data "terraform_remote_state" "vpc_backend" {
  backend = "s3"

  config = {
    bucket = "bucket-s3-terraform-01"
    key    = "Network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "dns_backend" {
  backend = "s3"

  config = {
    bucket = "bucket-s3-terraform-01"
    key    = "global/dns/abhi-cloud.shop/terraform.tfstate"
    region = "ap-south-1"
  }
}