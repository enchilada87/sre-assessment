variable "region" {
    description = "The region to build on"
    type = string
}

variable "credentials_file" {
    description = "The location of your aws credentials file"
    type = string
    default = "~/.aws/credentials"
}

variable "vpc_id" {
    description = "The ID of the VPC you are putting your deployments in"
    type = string
}

variable "key_name" {
    description = "name of ssh key"
    type = string
}

variable "public_key" {
    description = "the public key to upload."
    type = string
}

variable "sg_name" {
    description = "The name of the security group being created"
    type = string
}

variable "sg_description" {
    description = "brief description of security group being created"
    type = string
}

variable "ami" {
    description = "the ami to build your ec2 instance with"
    type = string
}

variable "instance_type" {
    description = "the instance type to make your ec2"
    type = string
    default = "t2.micro"
}

variable "tags" {
    description = "tags to label your deployments with"
    type = map
}