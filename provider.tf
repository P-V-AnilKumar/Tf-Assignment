terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.44.0"
    }
  }
}

provider "aws" {
    access_key="AKIAW2MISVAFGYXWZH5E"
    secret_key ="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"
    region = "us-west-2"
}