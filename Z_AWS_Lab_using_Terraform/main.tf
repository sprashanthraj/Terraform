# # basics of Terraform in this step-by-step tutorial of how to deploy a cluster of web servers and a load balancer on AWS

# https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180#8606

terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}

# interpolation is not deprecated in the latest version of Terraform 

provider "aws" {
  region     = var.region1  # syntax of interpolation "${var.region}"
  access_key = var.access
  secret_key = var.secret
}



# # creating the new VPC for the instance and referring to the subnet

# # resource "aws_vpc" "main" {
# #   cidr_block       = var.vpc
# #   instance_tenancy = "default"

# #   tags = {
# #     Name = "Main_VPC"
# #     Location = "Bangalore"
# #   }
# # }

# # resource "aws_subnet" "main1" {
# #   vpc_id     = aws_vpc.main.id
# #   cidr_block = var.subnet_vpc

# #   tags = {
# #     Name = "Main_subnet"
# #   }
# # }

# # Resource to add the aws instance with linux image 
# # we are using the bash script to write the Index.html file which outputs the "Hello World"

resource "aws_instance" "web" {
  ami           = "ami-01e7ca2ef94a0ae86"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  # subnet_id = aws_subnet.main1.id
  # associate_public_ip_address = true
  # subnet_id = "subnet-0dc5aec84e80ac141"
  key_name = "terraform_keypair"
  
  user_data = <<-EOF
              !/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF  
  
  tags = {
    Name = "terraform-example"
  }
}


# # adding the "security group resource for traffic flow"

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"  
  # vpc_id = aws_vpc.main.id
  
  
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "example_SG"
  }
}




# # # new example for ec2

# provider "aws" {
#   region = "us-east-2"
#   access_key = var.access
#   secret_key = var.secret
# }

# resource "aws_instance" "example" {
#   ami = "ami-01e7ca2ef94a0ae86"
#   instance_type = "t2.micro"


#   tags = {
#     "Name" = "sample"
#   }
  
# }


