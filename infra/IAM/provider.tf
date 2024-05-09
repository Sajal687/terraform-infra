terraform {
  backend "s3" {
    bucket = "terraform-state-sn-file"
    key = "key/terraform.tfstate"
    region = "ca-central-1"
  }
}

provider "random" {}

provider "aws" {
    region = "ca-central-1"
}