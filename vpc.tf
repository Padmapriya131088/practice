terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_cloud9_environment_ec2" "test" {
  instance_type = "t2.micro"
  name          = "example-env"
  image_id      = "amazonlinux-2023-x86_64"
  
  }
