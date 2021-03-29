# Adding variable to use it a dynamic way

variable "instance_name" {
    description = "Value of the name tag for the Ec2 instance"
    type = string
    default = "ExmpleInstance"
  
}
