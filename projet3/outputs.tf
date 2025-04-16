output "iam_user_descriptions" {
  description = "Liste des utilisateurs IAM avec leur description"
  value       = [for name, role in var.IAM_USERS : "${name} est ${role}"]
}
