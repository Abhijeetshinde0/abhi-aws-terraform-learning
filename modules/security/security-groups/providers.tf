terraform {
 required_providers {
   aws ={
    source = "hashicorp/aws"
    version = "~> 6.0"
   }
 }
}

# configre the AWS provider
provider "aws" {
    region = var.aws_region
}