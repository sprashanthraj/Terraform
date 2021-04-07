# # cloud formation stack to provision the aws ec2 instance

# resource "aws_cloudformation_stack_set_instance" "sampleinstance" {
#     name = "vpc-stack-1"

#     parameter_overrides = {
#       "vpc" = "value"
#     }
#     template_body = << stack
# {
#     "parameters" = 
# }

# }


# provider "aws" {
#     profile = "default"
#     region  = "ap-south-1"  
# }

# resource "aws_instance"  "raj" {
#     ami           = "ami-068d43a544160b7ef"
#     instance_type = "t2.micro"
    
#     tags = {
#       key_name  = var.instance_name
#     }
# }


# Creating the resource for Ec2 instance