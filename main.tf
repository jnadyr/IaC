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
  #user_data = <<-EOF
  #            #!/bin/bash
  #            cd /home/ubuntu
  #            echo "<h1>Segunda Maquina</h1>" > index.html
  #            nohup busybox httpd -f -p 8080 &
  #            EOF
  key_name      = "IaC-ParDeChaves"


  tags = {
    Name = "Primeira Instancia com Terraform"
  }
}


