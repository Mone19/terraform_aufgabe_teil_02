provider "local" {}

variable "create_file" {
  type    = bool
  default = false
}

resource "local_file" "conditional_file" {
  count = var.create_file ? 1 : 0

  filename = "conditional_file.txt"
  content  = "This file is created conditionally."
}