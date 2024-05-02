# # module "iam" {
# #   source = "./iam"
# #   aws_project_id = var.aws_project_id
# #   aws_project_env = var.aws_project_env
# #   aws_account_id = var.aws_account_id
# #   aws_project_account = var.aws_project_account
# # }

module "s3" {
  # Invoke module
#   source = "./s3"
  source = "git::https://github.com/victorjhqampier/aws_s3_module.git//minimal"
  # Send Variables
  aws_project_id = var.aws_project_id
  aws_project_env = var.aws_project_env
  aws_project_account = var.aws_project_account
}

# module "ec2-bastion" {
#   source            = "./ec2"
#   descrip           = "bastion"
#   ami               = "ami-03cd80cfebcbb4481"
#   instance_type     = "t3.micro"
#   key_name          = "integraciones-dev-key"
#   subnet_pub_id     = "subnet-042fc659bf3b7ac20"

#   #sg
# }
