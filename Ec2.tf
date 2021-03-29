terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}

provider "aws" {
    profile = "default"
    region  = "ap-south-1"  
}

resource "aws_instance"  "raj" {
    ami           = "ami-068d43a544160b7ef"
    instance_type = "t2.micro"
    
    tags = {
      key_name  = var.instance_name
    }
}