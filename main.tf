terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
  backend "remote" {
    organization = "birlasoft"
    workspaces {
       name = "terraform-aws-demo27"
    }
    
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
  
}




resource "aws_instance" "demo" {
    ami = "ami-0d7a109bf30624c99"
    instance_type = "t2.nano"
    tags = {
        "Name" = "Devserver1"
    }
}