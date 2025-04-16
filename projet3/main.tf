variable "IAM_USERS" { 
    type = list 
    default = ["hatim", "sarah", "alex"] 
}

provider "aws" {
    region = "us-east-1" 
}

resource "aws_iam_user" "team_iam_user" {
    for_each = toset(var.IAM_USERS)
    name  = each.value

    tags = { 
        key = each.key 
        value = each.value 
    } 
}
