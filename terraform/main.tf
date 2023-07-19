terraform {
  backend "s3" {
    bucket = "demo-service-tf-state"
    key    = "env:/dev/demo-service/terraform.tfstate"
    profile = "demo-service"
    region  = "eu-central-1"
  }
}

provider "aws" {
  region = var.aws_region
  # GHA dont like this, uncomment this for local testing
  #profile = var.aws_profile
}
