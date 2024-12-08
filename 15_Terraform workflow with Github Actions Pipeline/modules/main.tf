terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "djvpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "dj vpc"
    Environment = terraform.workspace
  }
}
