terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  shared_credentials_file  = var.credentials_file
}

#fetch vpc information 
data "aws_vpc" "vpc" {
    id = var.vpc_id
}

# create aws key pair
resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.public_key
}

# Create aws security grouop
resource "aws_security_group" "ec2" {
    name = var.sg_name
    description = var.sg_description
    vpc_id = data.aws_vpc.vpc.id

    ingress {
        description = "SSH to VPC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "SSH from VPC"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "HTTPs to VPC"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "HTTPs from VPC"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
        ingress {
        description = "HTTP to VPC"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "HTTP from VPC"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = var.tags
}

#Create aws ec2 instance
resource "aws_instance" "instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.key.key_name
    security_groups = [aws_security_group.ec2.name]

    tags = var.tags
}
