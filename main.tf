terraform {
  backend "remote" {
    organization = "first-team"
    workspaces {
      name = "Example-Workspace"
    }
  }
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
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ca38c7440de1749a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
