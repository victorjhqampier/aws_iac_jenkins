provider "aws" {
  region = var.iac_aws_region
  access_key = var.iac_aws_access_key
  secret_key = var.iac_aws_secret_key
}

# module "s3" {
#   source = "git::https://github.com/victorjhqampier/aws_s3_module.git//minimal"
#   # Send Variables
#   aws_project_id = var.aws_project_id
#   aws_project_env = var.aws_project_env
#   aws_project_account = var.aws_project_account
# }

 module "vpc" {
  source = "git::https://github.com/jesuselvis/vpc-module.git"#no cambiar
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block_pub = ["10.0.1.0/24"] #you can add two more subnets
  subnet_cidr_block_priv = ["10.0.2.0/24"]
  name = "vpc-main"
  azs = [ "us-east-1a"]
}
