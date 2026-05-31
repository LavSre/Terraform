terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.47.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-02b2c1b57c5105166"
  instance_type = "t3.micro"
  tags = {
    Name = "Lavanya-server"
  }
}
