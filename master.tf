#This code use to creat aws ec2 instance called terrform project


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Create ec2 instances
resource "aws_instance" "app_server" {
 ami = "ami-0866a3c8686eaeeba"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform project"
  }
}
