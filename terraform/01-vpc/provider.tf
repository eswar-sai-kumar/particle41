terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "s3bucket-project-devops"
    key    = "task2-infra"
    region = "us-east-1"
    use_lockfile  = true 
    // instead of use_lockfile = true, we can also use dynamodb
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}