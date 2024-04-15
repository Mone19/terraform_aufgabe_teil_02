provider "random" {}

resource "random_pet" "subnet_names" {
  count  = 5
  length = 2
}

locals {
  subnet_names = slice(random_pet.subnet_names[*].id, 0, random_integer.selected_count.result)
}

resource "random_integer" "selected_count" {
  min = 1
  max = 5
}

output "subnet_names" {
  value = local.subnet_names
}