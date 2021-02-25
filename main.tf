resource "random_string" "name" {
  length = var.length - length(var.prefix)
  keepers = var.keepers
}


output "name" {
  value = "${var.prefix}${random_string.name.id}"
}

