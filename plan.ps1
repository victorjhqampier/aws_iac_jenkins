$AWS_ACCESS_KEY = Read-Host -Prompt "> AWS ACCESS KEY :"
$AWS_SECRET_KEY = Read-Host -AsSecureString -Prompt "> Complete Secret key to '$AWS_ACCESS_KEY '"
$plainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($AWS_SECRET_KEY))

$command = "terraform plan -var='iac_aws_region=us-east-1' -var='iac_aws_access_key=$AWS_ACCESS_KEY' -var='iac_aws_secret_key=$plainPassword' -var='aws_project_id=iacdevops' -var='aws_project_env=develop' -var='aws_project_account=integrat-dev' -var='aws_account_origin=devops' -var='aws_account_target=integrations-dev'"
Write-Host "> Applicando cambios terraform"
Invoke-Expression $command
Write-Host "> Ejecución terminado..."

#Create > backend.tf
# terraform{
#     backend "s3" {
#         bucket = "devops-iac-dev-jenkins-tfstates"
#         encrypt = true
#         key = "dataplatform/terraform.tfstate"
#         region = "us-east-1"
#         access_key = ""
#         secret_key = ""
#     }
# }