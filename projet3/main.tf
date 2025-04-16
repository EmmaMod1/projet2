provider "aws" {
    region = "us-east-2" 
}

resource "aws_iam_user" "team_iam_user" { 
    count = 3 
    name = "user-${count.index}" 
}