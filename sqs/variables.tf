variable "region" {
    description = "The region to build on"
    type = string
}

variable "credentials_file" {
    description = "The location of your aws credentials file"
    type = string
    default = "~/.aws/credentials"
}

variable "tags" {
    description = "tags to label your deployments with"
    type = map
}