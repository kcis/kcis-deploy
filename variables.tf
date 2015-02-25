variable "access_key" {}
variable "secret_key" {}

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

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
    default = {
        eu-west-1 = "ami-b1cf19c6"
        us-east-1 = "ami-de7ab6b6"
        us-west-1 = "ami-3f75767a"
        us-west-2 = "ami-21f78e11"
    }
}
