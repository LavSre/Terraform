terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0fdfb4d987b63ae72"
  instance_type = "t3.micro"
  tags = {
    Name = "Lavanya-server"
  }
}
