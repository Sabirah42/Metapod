terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket  = "yusabs-moli-metapod-bucket"
    region  = "eu-west-2"
    key     = "tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-west-2"
}