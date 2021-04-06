# Adding variable to use it a dynamic way

# variable "instance_name" {
#     description = "Value of the name tag for the Ec2 instance"
#     type = string
#     default = "ExmpleInstance"
    
  
# }

variable "region" {

    default = "ap-south-1"
  
}

variable "access" {
    default   = "AKIAUW5FDT2RSZ45G6FN"
    
}

variable "secret" {

    default = "rf0ZmayNtxGNx5ggP5J9aniAXAV83XjCWkHt87y5"
  
}

variable "vpc" {
    default = "190.160.0.0/16"
  
}

variable "subnet_vpc" {
    default = "190.160.1.0/24"
  
}
