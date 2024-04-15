resource "random_password" "secure_password" {
  length           = 20
  special          = true
  override_special = "!@%_-"
}

output "random_secure_password" {
  value = random_password.secure_password.result
  sensitive = true
}