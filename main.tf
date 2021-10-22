terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami               = "ami-024615f49be85226a"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"

  tags = {
    Name = var.instance_name
  }
}

