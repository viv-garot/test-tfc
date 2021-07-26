provider "aws" {
  region = "eu-central-1"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0baa12826217a765e"
  instance_type = "t2.macro"
  vpc_security_group_ids      = "vpc-3302f159"
  subnet_id                   = "subnet-2b62b941"
}
