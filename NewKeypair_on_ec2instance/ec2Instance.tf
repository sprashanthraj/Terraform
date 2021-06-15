# New ec2 instance with existing key pair and also creating new key pair and referring it to existing ec2 instance.

provider "aws" {
  region = "us-east-2"

}

# creating a new key pair and attaching the key pair to ec2 instance

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/terraform.pub")
}

resource "aws_instance" "web" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  user_data     = file("user_data.sh")

  tags = {
    Name  = "Terraform"
    Batch = "7AM"
  }
}