# Adding variable to use it a dynamic way

# variable "instance_name" {
#     description = "Value of the name tag for the Ec2 instance"
#     type = string
#     default = "ExmpleInstance"
    
  
# }
  
variable "region1" {

    default = "ap-south-1"
  
}

variable "vpc" {
    default = "190.160.0.0/16"
  
}

variable "subnet_vpc" {
    default = "190.160.1.0/24"
  
}
