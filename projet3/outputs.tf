output "iam_user_names" {
  description = "List of IAM user names"
  value       = [for user in aws_iam_user.team_iam_user : user.name]
}

output "iam_user_arns" {
  description = "List of IAM user ARNs"
  value       = [for user in aws_iam_user.team_iam_user : user.arn]
}