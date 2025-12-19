terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f5fcdfbd140e4ab7"
  instance_type = "t3.micro"
  key_name      = "IaC-pardechaves"

  tags = {
    Name = "Primeira Instancia com Terraform"
  }
}


