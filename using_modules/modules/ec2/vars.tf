

variable "ec2_count" {
    default = "1"
    type = string
    description = "(optional) describe your variable"
}

variable "ami_id" {
   
}

variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "(optional) describe your variable"
}

variable "subnet_id" {
    
}