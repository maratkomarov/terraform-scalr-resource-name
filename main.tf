module "test" {
  source = "git::https://github.com/jfblg/terraform-random-jarm"
  random_length=32
}
  
resource "random_string" "name" {
  length = var.length - length(var.prefix)
  keepers = var.keepers
}


output "name" {
  value = "${var.prefix}${random_string.name.id}"
  description = "The generated resource name"
}

