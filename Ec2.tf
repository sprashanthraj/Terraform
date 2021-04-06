terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}

provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc}"
  instance_tenancy = "default"

  tags = {
    Name = "main"
    Location = "Bangalore"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.subnet_vpc}"

  tags = {
    Name = "Main"
  }
}




