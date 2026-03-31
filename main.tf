variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Create a simple resource (like a Virtual Private Cloud)
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}