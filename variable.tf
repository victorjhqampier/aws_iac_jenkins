# AWS Credentials/roles
variable "iac_aws_region"{
    type = string
    description = "Region donde se desplegará la infra"
    sensitive = false
}
variable "iac_aws_access_key"{
    type = string
    description = "access key donde se desplegará la infra"
    sensitive = true
}
variable "iac_aws_secret_key"{
    type = string
    description = "secret key donde se desplegará la infra"
    sensitive = true
}

#Variables obligatorios
variable "aws_project_id"{
    type = string
    description = "Nombre del proyecto"
    sensitive = false
}
variable "aws_project_env"{
    type = string
    description = "Ambiente del proyecto"
    sensitive = false
}
variable "aws_project_account"{
    type = string
    description = "Nombre de la cuenta"
    sensitive = false
}
variable "aws_account_origin"{
    type = string
    description = "Nombre de cuenta que creó la infraestructura"
    sensitive = false
}
variable "aws_account_target"{
    type = string
    description = "Nombre de cuenta dónde se aprovisionó la infraestructura"
    sensitive = false
}