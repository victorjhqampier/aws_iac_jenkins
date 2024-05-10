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
