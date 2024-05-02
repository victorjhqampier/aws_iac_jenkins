#Variables obligatorios
variable "aws_project_id"{
    type = string
    description = "Nombre del proyecto"
}
variable "aws_project_env"{
    type = string
    description = "Ambiente del proyecto"
}
variable "aws_project_account"{
    type = string
    description = "Nombre de la cuenta"
}
#variables para applicaciones
variable "aws_account_id"{
    type = string
    description = "ID cuenta AWS"
}
variable "s3_cloudfront_boton_name"{
    type = string
    description = "Nombre de cloudFront de Boton de pagos"
}
variable "s3_cloudfront_boton_price_class"{
    type = string
    description = "Precio de cloudFront de Boton de pagos"
}
variable "s3_cloudfront_boton_root_object"{
    type = string
    description = "Etiqueta del proyecto"
}