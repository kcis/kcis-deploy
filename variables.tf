variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "key_name" {
    description = "Name of the SSH keypair to use in AWS."
    default = "kcis-deploy"
}

variable "key_path" {
    description = "Path to the private portion of the SSH key specified."
    default = "~/.aws/kcis-deploy.pem"
}

variable "aws_region" {
    description = "AWS region to launch servers."
    default = "us-west-1"
}

# Ubuntu created by packer
variable "aws_amis" {
    default = {
        us-west-1 = "ami-4159bc05"
    }
}
