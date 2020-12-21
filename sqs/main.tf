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

resource "aws_sqs_queue" "sqs" {
  name                      = "sqs"
  visibility_timeout_seconds = 30
  delay_seconds             = 0
  receive_wait_time_seconds = 0
  message_retention_seconds = 345600
  max_message_size          = 2048

  tags = var.tags
}