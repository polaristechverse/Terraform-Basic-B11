provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "statestore-polaris"
    key    = "polarisbasics.tfstate"
    region = "us-east-1"
  }
}
