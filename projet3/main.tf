variable "IAM_USERS" { 
    type = list
    default = ["hatim", "sarah", "alex"] 
}

provider "aws" {
    region = "us-east-2" 
}

resource "aws_iam_user" "team_iam_user" {
    count = length(var.IAM_USERS)
    name  = var.IAM_USERS[count.index]
}
