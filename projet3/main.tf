provider "aws" {
    region = "us-east-1" 
}

variable "IAM_USERS" {
    description = "utilisateurs iam avec leur description"
    type        = map(string)
        default     = {
        hatim     = "notre créateur du site devopssec"
        sarah      = "notre cobaye Terraform"
        alex      = "notre voleur des indexs Terraform"
    }
}

output "users" {
    value = {for name, role in var.IAM_USERS : "Qui est ${name} ?" => "C'est ${role}"}
}


